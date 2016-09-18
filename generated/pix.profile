#
#Profile for pix
#

#No Blacklist Paths
noblacklist ${HOME}/.config/pix
noblacklist ${HOME}/.local/share/pix

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
private-bin pix
private-dev
