#
#Profile for eog
#

#No Blacklist Paths
noblacklist ${HOME}/.cache/champlain
noblacklist ${HOME}/.config/eog

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
protocol unix,inet,inet6
seccomp
