#
#Profile for conkeror
#

#No Blacklist Paths
noblacklist ${DOWNLOADS}
noblacklist ${HOME}/.conkeror.mozdev.org 
noblacklist ${HOME}/.pki

#Blacklist Paths
include /etc/firejail/disable-common.inc
include /etc/firejail/disable-programs.inc
include /etc/firejail/disable-passwdmgr.inc
include /etc/firejail/disable-devel.inc

#Whitelist Paths
whitelist ${DOWNLOADS}
mkdir ${HOME}/.conkeror.mozdev.org 
whitelist ${HOME}/.conkeror.mozdev.org 
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
