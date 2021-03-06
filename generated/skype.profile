#
#Profile for skype
#

#No Blacklist Paths
noblacklist ${DOWNLOADS}
noblacklist ${HOME}/.Skype

#Blacklist Paths
include /etc/firejail/disable-common.inc
include /etc/firejail/disable-programs.inc
include /etc/firejail/disable-passwdmgr.inc
include /etc/firejail/disable-devel.inc

#Whitelist Paths
whitelist ${DOWNLOADS}
mkdir ${HOME}/.Skype
whitelist ${HOME}/.Skype
include /etc/firejail/whitelist-common.inc

#Options
caps.drop all
ipc-namespace
noexec ${HOME}/
noexec /tmp/
noroot
private-bin skype,bash
private-etc resolv.conf,hosts,fonts,pulse
protocol inet,inet6,unix
seccomp
