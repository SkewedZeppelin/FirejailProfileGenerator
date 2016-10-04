#
#Profile for zathura
#

#No Blacklist Paths
noblacklist ${HOME}/.config/zathura
noblacklist ${HOME}/.local/share/zathura

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
nosound
private-bin zathura
private-dev
protocol unix
seccomp
shell none
