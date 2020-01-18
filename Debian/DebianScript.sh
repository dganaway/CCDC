#bin/sh

sudo passwd root

eval getent passwd {$(awk '/^UID_MIN/ {print $2}' /etc/login.defs)..$(awk '/^UID_MAX/ {print $2}' /etc/login.defs)} | cut -d: -f1 > normalUsers.txt

awk -F":" '{print "Login:" $1 "\tName:" $5 "\tHome:" $6}' /etc/passwd > passwdUsers.txt

systemctl list-unit-files --type service | grep enabled > servicesList.txt

#cut -d: -f1 /etc/passwd

#service --status-all | grep running
