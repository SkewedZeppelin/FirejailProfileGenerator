#
#Profile for dillo
#

#No Blacklist Paths
noblacklist ${HOME}/.dillo
noblacklist ${HOME}/.fltk
noblacklist ${DOWNLOADS}

#Blacklist Paths
include /etc/firejail/disable-common.inc
include /etc/firejail/disable-programs.inc
include /etc/firejail/disable-passwdmgr.inc
include /etc/firejail/disable-devel.inc

#Whitelist Paths
mkdir ${HOME}/.dillo
whitelist ${HOME}/.dillo
mkdir ${HOME}/.fltk
whitelist ${HOME}/.fltk
whitelist ${DOWNLOADS}
include /etc/firejail/whitelist-common.inc

#Options
caps.drop all
netfilter
nonewprivs
noroot
protocol unix,inet,inet6
seccomp
tracelog
