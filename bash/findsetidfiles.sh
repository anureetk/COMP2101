#!/bin/bash
#
# this script generates a report of the files on the system that have the setuid permission bit turned on
#

echo "Setuid files:"
find / -type f -executable -perm -4000 -ls 2>/dev/null | sort -k 3
echo
echo "Setgid files:"
find / -type f -executable -perm -2000 -ls 2>/dev/null | sort -k 4

#task 2 finding top largest files
echo "Find top largest files"
find / -type f -printf '%s %p %k MB\n' 2>/dev/null | sort -nr |head -10

exit
