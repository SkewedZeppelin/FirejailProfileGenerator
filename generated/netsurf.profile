#
#Profile for netsurf
#

#No Blacklist Paths
noblacklist ${HOME}/.config/netsurf
noblacklist ${HOME}/.cache/netsurf
noblacklist ${DOWNLOADS}

#Blacklist Paths
include /etc/firejail/disable-common.inc
include /etc/firejail/disable-programs.inc
include /etc/firejail/disable-passwdmgr.inc
include /etc/firejail/disable-devel.inc

#Whitelist Paths
mkdir ${HOME}/.config/netsurf
whitelist ${HOME}/.config/netsurf
mkdir ${HOME}/.cache/netsurf
whitelist ${HOME}/.cache/netsurf
whitelist ${DOWNLOADS}
include /etc/firejail/whitelist-common.inc

#Options
caps.drop all
netfilter
nonewprivs
noroot
protocol unix,inet,inet6,netlink
seccomp
tracelog
