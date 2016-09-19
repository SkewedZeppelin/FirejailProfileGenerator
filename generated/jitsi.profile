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
nogroups
nonewprivs
noroot
private-tmp
protocol unix,inet,inet6
seccomp
shell none
tracelog
