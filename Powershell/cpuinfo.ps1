#creating a function for cpu info

function get-cpuinfo{
write-output "cpu information"
$info = get-ciminstance -class win32_process | format-list *Manufacturer,NUmberofCores*
write-output $info}

get-cpuinfo