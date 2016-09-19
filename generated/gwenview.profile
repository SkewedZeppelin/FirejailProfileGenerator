#
#Profile for gwenview
#

#No Blacklist Paths
noblacklist ${HOME}/.kde/share/apps/gwenview
noblacklist ${HOME}/.kde/share/config/gwenviewrc

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
nosound
private-dev
protocol unix
seccomp
