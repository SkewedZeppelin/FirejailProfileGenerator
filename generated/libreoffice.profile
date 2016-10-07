#
#Profile for libreoffice
#

#No Blacklist Explicit Paths
noblacklist /usr/local/sbin

#No Blacklist Paths
noblacklist ${HOME}/.config/libreoffice

#Blacklist Paths
include /etc/firejail/disable-common.inc
include /etc/firejail/disable-programs.inc
include /etc/firejail/disable-passwdmgr.inc
include /etc/firejail/disable-devel.inc

#Options
caps.drop all
net none
nogroups
nonewprivs
noroot
private-dev
protocol unix,inet,inet6
seccomp
tracelog
