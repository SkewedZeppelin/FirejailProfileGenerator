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
mkdir ${HOME}/.mozilla
whitelist ${HOME}/.mozilla
mkdir ${HOME}/.cache/mozilla
whitelist ${HOME}/.cache/mozilla
mkdir ${HOME}/.pki
whitelist ${HOME}/.pki
mkdir ${HOME}/.gnupg
whitelist ${HOME}/.gnupg
mkdir ${HOME}/.icedove
whitelist ${HOME}/.icedove
mkdir ${HOME}/.cache/icedove
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
