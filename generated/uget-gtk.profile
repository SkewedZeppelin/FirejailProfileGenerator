#
#Profile for uget-gtk
#

#No Blacklist Paths
noblacklist ${DOWNLOADS}
noblacklist ${HOME}/.config/uGet

#Blacklist Paths
include /etc/firejail/disable-common.inc
include /etc/firejail/disable-programs.inc
include /etc/firejail/disable-passwdmgr.inc
include /etc/firejail/disable-devel.inc

#Whitelist Paths
whitelist ${DOWNLOADS}
mkdir ${HOME}/.config/uGet
whitelist ${HOME}/.config/uGet
include /etc/firejail/whitelist-common.inc

#Options
caps.drop all
netfilter
nonewprivs
noroot
nosound
private-bin uget-gtk
private-dev
private-tmp
protocol unix,inet,inet6
seccomp
shell none
