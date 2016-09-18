#
#Profile for 0ad
#

#No Blacklist Paths
noblacklist ${HOME}/.cache/0ad
noblacklist ${HOME}/.config/0ad
noblacklist ${HOME}/.local/share/0ad

#Blacklist Paths
include /etc/firejail/disable-common.inc
include /etc/firejail/disable-programs.inc
include /etc/firejail/disable-passwdmgr.inc
include /etc/firejail/disable-devel.inc

#Whitelist Paths
mkdir ${HOME}/.cache/0ad
whitelist ${HOME}/.cache/0ad
mkdir ${HOME}/.config/0ad
whitelist ${HOME}/.config/0ad
mkdir ${HOME}/.local/share/0ad
whitelist ${HOME}/.local/share/0ad
include /etc/firejail/whitelist-common.inc

#Options
caps.drop all
netfilter
nogroups
nonewprivs
noroot
protocol unix,inet,inet6
seccomp
shell none
tracelog
private-dev
private-tmp
