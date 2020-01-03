#bin/sh

pfSsh.php playback changepassword admin

awk -F":" '{print "Login:" $1 "\tName:" $5 "\tHome:" $6}' /etc/passwd > passwdUsers.txt

cat /etc/passwd | grep '/home' | cut -d: -f1 > homeUsers.txt

service -e | cut -d/ -f4 > servicesList
