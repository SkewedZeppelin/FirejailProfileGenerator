#
#Profile for xiphos
#

#No Blacklist Paths
noblacklist ${HOME}/.sword
noblacklist ${HOME}/.xiphos

#Blacklist Paths
include /etc/firejail/disable-common.inc
include /etc/firejail/disable-programs.inc
include /etc/firejail/disable-passwdmgr.inc
include /etc/firejail/disable-devel.inc

#Whitelist Paths
mkdir ${HOME}/.sword
whitelist ${HOME}/.sword
mkdir ${HOME}/.xiphos
whitelist ${HOME}/.xiphos
include /etc/firejail/whitelist-common.inc

#Options
caps.drop all
netfilter
nogroups
nonewprivs
noroot
nosound
private-bin xiphos
private-dev
private-etc fonts,resolv.conf,sword
private-tmp
protocol unix,inet,inet6
seccomp
shell none
tracelog
