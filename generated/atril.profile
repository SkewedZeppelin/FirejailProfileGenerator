#
#Profile for atril
#

#No Blacklist Paths
noblacklist ${HOME}/.config/atril
noblacklist ${HOME}/.local/share

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
nosound
protocol unix
seccomp
shell none
tracelog
private-bin atril, atril-previewer, atril-thumbnailer
private-dev
private-tmp
