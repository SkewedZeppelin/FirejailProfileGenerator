#
#Profile for openshot
#

#No Blacklist Paths
noblacklist ${HOME}/.openshot
noblacklist ${HOME}/.openshot_qt

#Blacklist Paths
include /etc/firejail/disable-common.inc
include /etc/firejail/disable-programs.inc
include /etc/firejail/disable-passwdmgr.inc
include /etc/firejail/disable-devel.inc

#Options
caps.drop all
nonewprivs
noroot
noroot
private-bin openshot,python
private-dev
protocol unix
seccomp
shell none
