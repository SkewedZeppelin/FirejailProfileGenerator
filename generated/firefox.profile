#
#Profile for firefox
#

#No Blacklist Paths
noblacklist ${DOWNLOADS}
noblacklist ${HOME}/.mozilla
noblacklist ${HOME}/.cache/mozilla
noblacklist ${HOME}/.pki
noblacklist ${HOME}/.8pecxstudios
noblacklist ${HOME}/.cache/8pecxstudios
noblacklist ${HOME}/.moonchild productions
noblacklist ${HOME}/.cache/moonchild productions
noblacklist ${HOME}/.conkeror.mozdev.org 

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
whitelist ${HOME}/.8pecxstudios
whitelist ${HOME}/.cache/8pecxstudios
whitelist ${HOME}/.moonchild productions
whitelist ${HOME}/.cache/moonchild productions
whitelist ${HOME}/.conkeror.mozdev.org 
include /etc/firejail/whitelist-common.inc

#Options
caps.drop all
netfilter
nonewprivs
noroot
protocol unix,inet,inet6,netlink
seccomp
tracelog
