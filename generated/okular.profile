#
#Profile for okular
#

#No Blacklist Paths
noblacklist ${HOME}/.kde/share/apps/okular
noblacklist ${HOME}/.kde/share/config/okularrc
noblacklist ${HOME}/.kde/share/config/okularpartrc

#Blacklist Paths
include /etc/firejail/disable-common.inc
include /etc/firejail/disable-programs.inc
include /etc/firejail/disable-passwdmgr.inc
include /etc/firejail/disable-devel.inc

#Options
read-only ${HOME}/.kde/share/config/kdeglobals
caps.drop all
nonewprivs
nogroups
noroot
private-dev
protocol unix
seccomp
nosound
