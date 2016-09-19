#
#Profile for qutebrowser
#

#No Blacklist Paths
noblacklist ${DOWNLOADS}
noblacklist ${HOME}/.cache/qutebrowser
noblacklist ${HOME}/.config/qutebrowser

#Blacklist Paths
include /etc/firejail/disable-common.inc
include /etc/firejail/disable-programs.inc
include /etc/firejail/disable-passwdmgr.inc
include /etc/firejail/disable-devel.inc

#Whitelist Paths
whitelist ${DOWNLOADS}
mkdir ${HOME}/.cache/qutebrowser
whitelist ${HOME}/.cache/qutebrowser
mkdir ${HOME}/.config/qutebrowser
whitelist ${HOME}/.config/qutebrowser
include /etc/firejail/whitelist-common.inc

#Options
caps.drop all
netfilter
nonewprivs
noroot
protocol unix,inet,inet6,netlink
seccomp
tracelog
