#
#Profile for transmission-cli
#

#No Blacklist Paths
noblacklist ${HOME}/.cache/transmission
noblacklist ${HOME}/.config/transmission

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
private-bin transmission-gtk transmission-qt transmission-cli
private-dev
protocol unix,inet,inet6
seccomp
shell none
tracelog
