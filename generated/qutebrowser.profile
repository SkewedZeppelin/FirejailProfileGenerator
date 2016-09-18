#
#Profile for qutebrowser
#

#No Blacklist Paths
noblacklist ${HOME}/.config/qutebrowser
noblacklist ${HOME}/.cache/qutebrowser
noblacklist ${DOWNLOADS}

#Blacklist Paths
include /etc/firejail/disable-common.inc
include /etc/firejail/disable-programs.inc
include /etc/firejail/disable-passwdmgr.inc
include /etc/firejail/disable-devel.inc

#Whitelist Paths
mkdir ${HOME}/.config/qutebrowser
whitelist ${HOME}/.config/qutebrowser
mkdir ${HOME}/.cache/qutebrowser
whitelist ${HOME}/.cache/qutebrowser
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
