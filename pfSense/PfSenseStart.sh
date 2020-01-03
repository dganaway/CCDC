#bin/sh

pfSsh.php playback changepassword admin

echo Users
awk -F":" '{print $1}' /etc/passwd
