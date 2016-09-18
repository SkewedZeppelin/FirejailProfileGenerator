#
#Profile for uget-gtk
#

#No Blacklist Paths
noblacklist ${HOME}/.config/uGet
noblacklist ${DOWNLOADS}

#Blacklist Paths
include /etc/firejail/disable-common.inc
include /etc/firejail/disable-programs.inc
include /etc/firejail/disable-passwdmgr.inc
include /etc/firejail/disable-devel.inc

#Whitelist Paths
mkdir ${HOME}/.config/uGet
whitelist ${HOME}/.config/uGet
whitelist ${DOWNLOADS}
include /etc/firejail/whitelist-common.inc

#Options
caps.drop all
netfilter
nonewprivs
noroot
protocol unix,inet,inet6
seccomp
shell none
private-bin uget-gtk
private-dev
nosound
