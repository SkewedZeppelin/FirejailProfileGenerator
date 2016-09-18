#
#Profile for jitsi
#

#No Blacklist Paths
noblacklist ${HOME}/.jitsi

#Blacklist Paths
include /etc/firejail/disable-common.inc
include /etc/firejail/disable-programs.inc
include /etc/firejail/disable-passwdmgr.inc
include /etc/firejail/disable-devel.inc

#Options
caps.drop all
nonewprivs
nogroups
noroot
protocol unix,inet,inet6
seccomp
shell none
tracelog
private-tmp
