#
#Profile for thunderbird
#

#No Blacklist Paths
noblacklist ${DOWNLOADS}
noblacklist ${HOME}/.mozilla
noblacklist ${HOME}/.cache/mozilla
noblacklist ${HOME}/.pki
noblacklist ${HOME}/.gnupg
noblacklist ${HOME}/.thunderbird
noblacklist ${HOME}/.cache/thunderbird

#Blacklist Paths
include /etc/firejail/disable-common.inc
include /etc/firejail/disable-programs.inc
include /etc/firejail/disable-passwdmgr.inc
include /etc/firejail/disable-devel.inc

#Whitelist Paths
whitelist ${DOWNLOADS}
whitelist ${HOME}/.mozilla
whitelist ${HOME}/.cache/mozilla
whitelist ${HOME}/.pki
whitelist ${HOME}/.gnupg
whitelist ${HOME}/.thunderbird
whitelist ${HOME}/.cache/thunderbird
include /etc/firejail/whitelist-common.inc

#Options
caps.drop all
netfilter
nonewprivs
noroot
protocol unix,inet,inet6,netlink
seccomp
tracelog
