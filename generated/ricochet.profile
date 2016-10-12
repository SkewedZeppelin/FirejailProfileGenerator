#
#Profile for ricochet
#

#No Blacklist Paths
noblacklist ${DOWNLOADS}
noblacklist ${HOME}/.local/share/Ricochet

#Blacklist Paths
include /etc/firejail/disable-common.inc
include /etc/firejail/disable-programs.inc
include /etc/firejail/disable-passwdmgr.inc
include /etc/firejail/disable-devel.inc

#Whitelist Paths
whitelist ${DOWNLOADS}
mkdir ${HOME}/.local/share/Ricochet
whitelist ${HOME}/.local/share/Ricochet
include /etc/firejail/whitelist-common.inc

#Options
caps.drop all
ipc-namespace
noexec /home
noexec /tmp
nogroups
noroot
private-bin ricochet,tor
private-dev
private-etc fonts,tor,X11,alternatives
seccomp
shell none
