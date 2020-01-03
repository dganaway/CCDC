#bin/sh

passwd root

awk -F":" '{print "Login:" $1 "\tName:" $5 "\tHome:" $6}' /etc/passwd > passwdUsers.txt

cat /etc/passwd | grep '/home' | cut -d: -f1 > homeUsers.txt

rc-status --servicelist | grep started > servicesList.txt
