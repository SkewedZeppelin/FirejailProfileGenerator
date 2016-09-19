#
#Profile for xreader
#

#No Blacklist Paths
noblacklist ${HOME}/.cache/xreader
noblacklist ${HOME}/.config/xreader
noblacklist ${HOME}/.local/share/xreader

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
private-bin xreader, xreader-previewer, xreader-thumbnailer
private-dev
private-tmp
protocol unix
seccomp
shell none
tracelog
