#
#Profile for qpdfview
#

#No Blacklist Paths
noblacklist ${HOME}/.config/qpdfview
noblacklist ${HOME}/.local/share/qpdfview

#Blacklist Paths
include /etc/firejail/disable-common.inc
include /etc/firejail/disable-programs.inc
include /etc/firejail/disable-passwdmgr.inc
include /etc/firejail/disable-devel.inc

#Options
caps.drop all
ipc-namespace
net none
noexec ${HOME}
noexec /tmp
nogroups
nonewprivs
noroot
nosound
private-bin qpdfview
private-dev
private-etc fonts,X11,alternatives
private-tmp
protocol unix
