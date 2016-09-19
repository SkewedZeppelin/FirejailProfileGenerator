#
#Profile for transmission-cli
#

#No Blacklist Paths
noblacklist ${HOME}/.config/transmission
noblacklist ${HOME}/.cache/transmission

#Blacklist Paths
include /etc/firejail/disable-common.inc
include /etc/firejail/disable-programs.inc
include /etc/firejail/disable-passwdmgr.inc
include /etc/firejail/disable-devel.inc

#Options
caps.drop all
netfilter
nonewprivs
noroot
nosound
protocol unix,inet,inet6
seccomp
shell none
tracelog
private-bin transmission-gtk transmission-qt transmission-cli
private-dev