﻿
write-output "System report (human friendly)"


get-wmiobject -class win32_computersystem |
Format-list @{Label="System Hardware Description";Expression={$_.description}}

get-wmiobject -class win32_operatingsystem |
Format-list @{Label="Operating System Name";Expression={$_.name}},
@{Label="Version";Expression={$_.version}}


get-wmiobject -class win32_processor |Where-Object MaxClockSpeed -ne $null |
foreach {
new-object -Typename psobject -Property @{
"Speed(GHz)" = $_.MaxClockSpeed
"Number of Core" = $_.NumberOfCores
"L2 CacheSize(MB)" = $_.L2CacheSize/1kb
"L3 CacheSize(MB)" = $_.L3CacheSize/1kb
}
} |
Format-list "Speed(GHz)","Number of Core","L2 CacheSize(MB)","L3 CacheSize(MB)"


$totalmemory = 0
get-wmiobject -class win32_physicalmemory |
foreach {
new-object -TypeName psobject -Property @{
"Vendor" = $_.manufacturer
"Description" = $_.Description
"Speed(MHz)" = $_.ConfiguredClockSpeed
"Size(MB)" = $_.capacity/1mb
"Bank" = $_.banklabel
"slot" = $_.devicelocator
}
$totalmemory += $_.capacity/1mb
} |
Format-Table -Autosize "vendor","Description","Size(MB)","Speed(MHz)","Bank","Slot"
"Total RAM: ${totalmemory}MB"


$disks=Get-wmiobject -class win32_logicaldisk | where-object size -gt 0


$diskConfig=foreach ($disk in $disks) {
$part = $disk.GetRelated('win32_diskpartition')
$drive = $part.GetRelated('win32_diskdrive')

new-object -TypeName psobject -Property @{
"Vendor"= $drive.manufacturer
"model"= $drive.model
#"Filesystem Drive"=$part.name
"size(GB)"= $drive.size/1gb -as [int]
"Free space(GB)"= $disk.freespace/1gb -as [int]
"% Free" = 100*$disk.freespace/$drive.size -as [int]

}
}
$diskConfig | Format-Table -Autosize "Vendor","model","Size(GB)","Free space(GB)","% Free"


get-wmiobject -class win32_videocontroller |
Format-list @{Label="vendor";Expression={$_.AdapterCompatibility}},
@{Label="Description";Expression={$_.Description}},
@{Label="Current Screen Resolution(Pixels)";Expression={$_.CurrentHorizontalResolution*$_.CurrentVerticalResolution}}