#
#Profile for firefox
#

#No Blacklist Paths
noblacklist ${DOWNLOADS}
noblacklist ${HOME}/.cache/mozilla
noblacklist ${HOME}/.mozilla
noblacklist ${HOME}/.pki

#Blacklist Paths
include /etc/firejail/disable-common.inc
include /etc/firejail/disable-programs.inc
include /etc/firejail/disable-passwdmgr.inc
include /etc/firejail/disable-devel.inc

#Whitelist Paths
whitelist ${DOWNLOADS}
mkdir ${HOME}/.cache/mozilla
whitelist ${HOME}/.cache/mozilla
mkdir ${HOME}/.mozilla
whitelist ${HOME}/.mozilla
mkdir ${HOME}/.pki
whitelist ${HOME}/.pki
include /etc/firejail/whitelist-common.inc

#Options
caps.drop all
netfilter
nonewprivs
noroot
private-dev
private-tmp
protocol unix,inet,inet6,netlink
seccomp
tracelog
