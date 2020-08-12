#report for non-microsoft software installed on the system

write-output "Report for non-microsoft software installed on the system"

gwmi -class win32_product -filter "vendor!='Microsoft Corporation'" | 
sort-object InstallDate | select-object name,vendor,version,InstallDate | 
format-table -autosize