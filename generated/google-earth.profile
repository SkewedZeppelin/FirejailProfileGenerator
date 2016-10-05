#
#Profile for google-earth
#

#No Blacklist Paths
noblacklist ${HOME}/.config/Google
noblacklist ${HOME}/.googleearth/Cache/
noblacklist ${HOME}/.googleearth/Temp/
noblacklist ${HOME}/.googleearth/myplaces.backup.kml
noblacklist ${HOME}/.googleearth/myplaces.kml

#Blacklist Paths
include /etc/firejail/disable-common.inc
include /etc/firejail/disable-programs.inc
include /etc/firejail/disable-passwdmgr.inc
include /etc/firejail/disable-devel.inc

#Whitelist Paths
mkdir ${HOME}/.config/Google
whitelist ${HOME}/.config/Google
mkdir ${HOME}/.googleearth/Cache/
whitelist ${HOME}/.googleearth/Cache/
mkdir ${HOME}/.googleearth/Temp/
whitelist ${HOME}/.googleearth/Temp/
mkfile ${HOME}/.googleearth/myplaces.backup.kml
whitelist ${HOME}/.googleearth/myplaces.backup.kml
mkfile ${HOME}/.googleearth/myplaces.kml
whitelist ${HOME}/.googleearth/myplaces.kml
include /etc/firejail/whitelist-common.inc

#Options
caps.drop all
ipc-namespace
noexec /home
noexec /tmp
nogroups
noroot
private-bin google-earth,sh,grep,sed,ls,dirname
private-dev
private-etc fonts,resolv.conf,X11,alternatives,pulse
seccomp
shell none
