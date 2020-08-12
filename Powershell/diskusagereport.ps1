
write-output "Powershell disk usage report"
gwmi -class win32_logicaldisk | where-object size -gt 0 | 
format-table -autosize @{Label="Filesystem Drive";Expression={$_.deviceid[0]}},
@{Label="Size(GB)";Expression={$_.size/1gb -as [int]}},
@{Label="Free space(GB)";Expression={$_.freespace/1gb -as [int]}},
ProviderName