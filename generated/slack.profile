#
#Profile for slack
#

#No Blacklist Paths
noblacklist ${HOME}/.config/Slack
noblacklist ${DOWNLOADS}

#Blacklist Paths
include /etc/firejail/disable-common.inc
include /etc/firejail/disable-programs.inc
include /etc/firejail/disable-passwdmgr.inc
include /etc/firejail/disable-devel.inc

#Whitelist Paths
mkdir ${HOME}/.config/Slack
whitelist ${HOME}/.config/Slack
whitelist ${DOWNLOADS}
include /etc/firejail/whitelist-common.inc

#Options
protocol unix,inet,inet6,netlink
private-dev
private-tmp
private-etc fonts,resolv.conf,ld.so.conf,ld.so.cache,localtime
name slack
blacklist /var
caps.drop all
seccomp
netfilter
nonewprivs
nogroups
noroot
shell none
private-bin slack
