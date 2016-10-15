#
#Profile for icecat
#

#No Blacklist Paths
noblacklist ${DOWNLOADS}
noblacklist ${HOME}/.8pecxstudios
noblacklist ${HOME}/.cache/8pecxstudios
noblacklist ${HOME}/.cache/moonchild productions
noblacklist ${HOME}/.cache/mozilla/icecat
noblacklist ${HOME}/.conkeror.mozdev.org 
noblacklist ${HOME}/.moonchild productions
noblacklist ${HOME}/.mozilla/icecat
noblacklist ${HOME}/.pki

#Blacklist Paths
include /etc/firejail/disable-common.inc
include /etc/firejail/disable-programs.inc
include /etc/firejail/disable-passwdmgr.inc
include /etc/firejail/disable-devel.inc

#Whitelist Paths
whitelist ${DOWNLOADS}
mkdir ${HOME}/.8pecxstudios
whitelist ${HOME}/.8pecxstudios
mkdir ${HOME}/.cache/8pecxstudios
whitelist ${HOME}/.cache/8pecxstudios
mkdir ${HOME}/.cache/moonchild productions
whitelist ${HOME}/.cache/moonchild productions
mkdir ${HOME}/.cache/mozilla/icecat
whitelist ${HOME}/.cache/mozilla/icecat
mkdir ${HOME}/.conkeror.mozdev.org 
whitelist ${HOME}/.conkeror.mozdev.org 
mkdir ${HOME}/.moonchild productions
whitelist ${HOME}/.moonchild productions
mkdir ${HOME}/.mozilla/icecat
whitelist ${HOME}/.mozilla/icecat
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
