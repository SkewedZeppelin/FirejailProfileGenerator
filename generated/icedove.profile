#
#Profile for icedove
#

#No Blacklist Paths
noblacklist ${DOWNLOADS}
noblacklist ${HOME}/.cache/icedove
noblacklist ${HOME}/.cache/mozilla
noblacklist ${HOME}/.gnupg
noblacklist ${HOME}/.icedove
noblacklist ${HOME}/.mozilla
noblacklist ${HOME}/.pki

#Blacklist Paths
include /etc/firejail/disable-common.inc
include /etc/firejail/disable-programs.inc
include /etc/firejail/disable-passwdmgr.inc
include /etc/firejail/disable-devel.inc

#Whitelist Paths
whitelist ${DOWNLOADS}
mkdir ${HOME}/.cache/icedove
whitelist ${HOME}/.cache/icedove
mkdir ${HOME}/.cache/mozilla
whitelist ${HOME}/.cache/mozilla
mkdir ${HOME}/.gnupg
whitelist ${HOME}/.gnupg
mkdir ${HOME}/.icedove
whitelist ${HOME}/.icedove
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
protocol unix,inet,inet6,netlink
seccomp
tracelog
