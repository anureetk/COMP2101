#!/bin/bash
#
# this script puts some picture files into a Pictures directory in our home directory
# it does some error testing
# it summarizes the Pictures directory when it is done
#

# Task 1: Improve this script to also retrieve and install the files kept in the https://zonzorp.net/pics.tgz tarfile
#

# make a Pictures directory if we don't have one - assumes we have a home directory
test -d ~/Pictures || mkdir ~/Pictures

# download a zipfile of pictures to our Pictures directory if it isn't already there - assumes you are online
test -f ~/Pictures/pics.zip || wget -q -O ~/Pictures/pics.zip http://zonzorp.net/pics.zip

# unpack the downloaded zipfile if it is there, then delete the local copy of the zipfile
test -f ~/Pictures/pics.zip && unzip -d ~/Pictures -o -q ~/Pictures/pics.zip && rm ~/Pictures/pics.zip

# Make a report on what we have in the Pictures directory
test -d ~/Pictures && cat <<EOF
Found $(find ~/Pictures -type f|wc -l) files in the Pictures directory.
The Pictures directory uses $(du -sh ~/Pictures|awk '{print $1}') space on the disk.
EOF
#next steps
# After that extracting and testing tarfile
echo "The tarfile"
test -f ~/Pictures/pics.tgz || wget -q -O ~/Pictures/pics.tgz http://zonorp.net/pics.tgz
test -f ~/Pictures/pics.tgz && tar -C ~/Pictures -xzf ~/Pictures/pics.tgz && rm ~/Pictures/pics.tgz
test -d ~/Pictures && cat <<EOF
Found $(find ~/Pictures -type f|wc -l) files in the Directory of Pictures.
The Pictures directory uses $(du -sh ~/Pictures|awk '{print $1}') space on this disk.
EOF

exit
#done
