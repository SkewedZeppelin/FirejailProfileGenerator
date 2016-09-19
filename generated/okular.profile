#
#Profile for okular
#

#No Blacklist Paths
noblacklist ${HOME}/.kde/share/apps/okular
noblacklist ${HOME}/.kde/share/config/okularpartrc
noblacklist ${HOME}/.kde/share/config/okularrc

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
private-dev
protocol unix
read-only ${HOME}/.kde/share/config/kdeglobals
seccomp
