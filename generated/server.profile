#
#Profile for server
#

#No Blacklist Explicit Paths
noblacklist /sbin
noblacklist /usr/sbin

#Blacklist Paths
include /etc/firejail/disable-common.inc
include /etc/firejail/disable-programs.inc
include /etc/firejail/disable-passwdmgr.inc

#Options
no3d
nosound
private
private-dev
private-tmp
seccomp
