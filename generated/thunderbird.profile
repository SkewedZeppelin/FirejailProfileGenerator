#
#Profile for thunderbird
#

#No Blacklist Paths
noblacklist ${DOWNLOADS}
noblacklist ${HOME}/.cache/mozilla
noblacklist ${HOME}/.cache/thunderbird
noblacklist ${HOME}/.gnupg
noblacklist ${HOME}/.mozilla
noblacklist ${HOME}/.pki
noblacklist ${HOME}/.thunderbird

#Blacklist Paths
include /etc/firejail/disable-common.inc
include /etc/firejail/disable-programs.inc
include /etc/firejail/disable-passwdmgr.inc
include /etc/firejail/disable-devel.inc

#Whitelist Paths
whitelist ${DOWNLOADS}
mkdir ${HOME}/.cache/mozilla
whitelist ${HOME}/.cache/mozilla
mkdir ${HOME}/.cache/thunderbird
whitelist ${HOME}/.cache/thunderbird
mkdir ${HOME}/.gnupg
whitelist ${HOME}/.gnupg
mkdir ${HOME}/.mozilla
whitelist ${HOME}/.mozilla
mkdir ${HOME}/.pki
whitelist ${HOME}/.pki
mkdir ${HOME}/.thunderbird
whitelist ${HOME}/.thunderbird
include /etc/firejail/whitelist-common.inc

#Options
caps.drop all
netfilter
nonewprivs
noroot
protocol unix,inet,inet6,netlink
seccomp
tracelog
