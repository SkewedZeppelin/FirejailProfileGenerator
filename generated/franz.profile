#
#Profile for franz
#

#No Blacklist Paths
noblacklist ${HOME}/.cache/Franz
noblacklist ${HOME}/.config/Franz
noblacklist ${HOME}/.pki

#Blacklist Paths
include /etc/firejail/disable-common.inc
include /etc/firejail/disable-programs.inc
include /etc/firejail/disable-passwdmgr.inc
include /etc/firejail/disable-devel.inc

#Options
#tracelog
caps.drop all
netfilter
nonewprivs
noroot
protocol unix,inet,inet6,netlink
seccomp
