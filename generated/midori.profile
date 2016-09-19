#
#Profile for midori
#

#No Blacklist Paths
noblacklist ${DOWNLOADS}
noblacklist ${HOME}/.cache/midori
noblacklist ${HOME}/.config/midori

#Blacklist Paths
include /etc/firejail/disable-common.inc
include /etc/firejail/disable-programs.inc
include /etc/firejail/disable-passwdmgr.inc
include /etc/firejail/disable-devel.inc

#Whitelist Paths
whitelist ${DOWNLOADS}
mkdir ${HOME}/.cache/midori
whitelist ${HOME}/.cache/midori
mkdir ${HOME}/.config/midori
whitelist ${HOME}/.config/midori
include /etc/firejail/whitelist-common.inc

#Options
caps.drop all
netfilter
nonewprivs
protocol unix,inet,inet6
seccomp
