#
#Profile for slimjet
#

#No Blacklist Paths
noblacklist ${DOWNLOADS}
noblacklist ${HOME}/.config/slimjet
noblacklist ${HOME}/.cache/slimjet
noblacklist ${HOME}/.pki

#Blacklist Paths
include /etc/firejail/disable-common.inc
include /etc/firejail/disable-programs.inc
include /etc/firejail/disable-passwdmgr.inc

#Whitelist Paths
whitelist ${DOWNLOADS}
mkdir ${HOME}/.config/slimjet
whitelist ${HOME}/.config/slimjet
mkdir ${HOME}/.cache/slimjet
whitelist ${HOME}/.cache/slimjet
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
