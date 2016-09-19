#
#Profile for dillo
#

#No Blacklist Paths
noblacklist ${DOWNLOADS}
noblacklist ${HOME}/.dillo
noblacklist ${HOME}/.fltk

#Blacklist Paths
include /etc/firejail/disable-common.inc
include /etc/firejail/disable-programs.inc
include /etc/firejail/disable-passwdmgr.inc
include /etc/firejail/disable-devel.inc

#Whitelist Paths
whitelist ${DOWNLOADS}
mkdir ${HOME}/.dillo
whitelist ${HOME}/.dillo
mkdir ${HOME}/.fltk
whitelist ${HOME}/.fltk
include /etc/firejail/whitelist-common.inc

#Options
caps.drop all
netfilter
nonewprivs
noroot
protocol unix,inet,inet6
seccomp
tracelog
