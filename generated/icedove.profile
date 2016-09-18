#
#Profile for icedove
#

#No Blacklist Paths
noblacklist ${DOWNLOADS}
noblacklist ${HOME}/.mozilla
noblacklist ${HOME}/.cache/mozilla
noblacklist ${HOME}/.pki
noblacklist ${HOME}/.gnupg
noblacklist ${HOME}/.icedove
noblacklist ${HOME}/.cache/icedove

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
whitelist ${HOME}/.icedove
whitelist ${HOME}/.cache/icedove
include /etc/firejail/whitelist-common.inc

#Options
caps.drop all
netfilter
nonewprivs
noroot
protocol unix,inet,inet6,netlink
seccomp
tracelog
