#
#Profile for audacity
#

#No Blacklist Paths
noblacklist ${HOME}/.audacity-data

#Blacklist Paths
include /etc/firejail/disable-common.inc
include /etc/firejail/disable-programs.inc
include /etc/firejail/disable-passwdmgr.inc
include /etc/firejail/disable-devel.inc

#Options
caps.drop all
netfilter
nogroups
nonewprivs
noroot
private-bin audacity
private-dev
private-tmp
protocol unix
seccomp
shell none
tracelog
