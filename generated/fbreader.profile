#
#Profile for fbreader
#

#No Blacklist Paths
noblacklist ${HOME}/.FBReader

#Blacklist Paths
include /etc/firejail/disable-common.inc
include /etc/firejail/disable-programs.inc
include /etc/firejail/disable-passwdmgr.inc
include /etc/firejail/disable-devel.inc

#Options
caps.drop all
netfilter
nonewprivs
noroot
nosound
protocol unix,inet,inet6
seccomp
shell none
private-bin fbreader,FBReader
private-dev
nosound
