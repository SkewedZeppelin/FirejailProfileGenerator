#
#Profile for parole
#

#Blacklist Paths
include /etc/firejail/disable-common.inc
include /etc/firejail/disable-programs.inc
include /etc/firejail/disable-passwdmgr.inc
include /etc/firejail/disable-devel.inc

#Options
private-etc passwd,group,fonts
private-bin parole,dbus-launch
caps.drop all
netfilter
nonewprivs
noroot
protocol unix,inet,inet6
seccomp
shell none
