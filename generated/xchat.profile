#
#Profile for xchat
#

#No Blacklist Paths
noblacklist ${DOWNLOADS}
noblacklist ${HOME}/.config/xchat

#Blacklist Paths
include /etc/firejail/disable-common.inc
include /etc/firejail/disable-programs.inc
include /etc/firejail/disable-passwdmgr.inc
include /etc/firejail/disable-devel.inc

#Whitelist Paths
whitelist ${DOWNLOADS}
mkdir ${HOME}/.config/xchat
whitelist ${HOME}/.config/xchat
include /etc/firejail/whitelist-common.inc

#Options
caps.drop all
nonewprivs
noroot
protocol unix,inet,inet6
seccomp
