#
#Profile for aweather
#

#No Blacklist Paths
noblacklist ${HOME}/.config/aweather

#Blacklist Paths
include /etc/firejail/disable-common.inc
include /etc/firejail/disable-programs.inc
include /etc/firejail/disable-passwdmgr.inc
include /etc/firejail/disable-devel.inc

#Whitelist Paths
mkdir ${HOME}/.config/aweather
whitelist ${HOME}/.config/aweather
include /etc/firejail/whitelist-common.inc

#Options
caps.drop all
netfilter
nonewprivs
nogroups
noroot
nosound
protocol unix,inet,inet6
seccomp
shell none
tracelog
private-bin aweather
private-dev
private-tmp
