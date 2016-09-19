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
nogroups
nonewprivs
noroot
nosound
private-bin pix
private-dev
protocol unix
seccomp
shell none
tracelog
