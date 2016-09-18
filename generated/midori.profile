#
#Profile for midori
#

#No Blacklist Paths
noblacklist {HOME}/.config/midori
noblacklist {HOME}/.cache/midori
noblacklist ${DOWNLOADS}

#Blacklist Paths
include /etc/firejail/disable-common.inc
include /etc/firejail/disable-programs.inc
include /etc/firejail/disable-passwdmgr.inc
include /etc/firejail/disable-devel.inc

#Whitelist Paths
mkdir {HOME}/.config/midori
whitelist {HOME}/.config/midori
mkdir {HOME}/.cache/midori
whitelist {HOME}/.cache/midori
mkdir ${DOWNLOADS}
whitelist ${DOWNLOADS}
include /etc/firejail/whitelist-common.inc

#Options
caps.drop all
netfilter
nonewprivs
protocol unix,inet,inet6
seccomp
