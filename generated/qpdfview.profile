#
#Profile for qpdfview
#

#No Blacklist Paths
noblacklist noblacklist ${HOME}/.config/qpdfview
noblacklist noblacklist ${HOME}/.local/share/qpdfview

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
private-bin qpdfview
private-dev
private-tmp
protocol unix
seccomp
shell none
tracelog
