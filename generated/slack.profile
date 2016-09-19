#
#Profile for slack
#

#No Blacklist Paths
noblacklist ${DOWNLOADS}
noblacklist ${HOME}/.config/Slack

#Blacklist Paths
include /etc/firejail/disable-common.inc
include /etc/firejail/disable-programs.inc
include /etc/firejail/disable-passwdmgr.inc
include /etc/firejail/disable-devel.inc

#Whitelist Paths
whitelist ${DOWNLOADS}
mkdir ${HOME}/.config/Slack
whitelist ${HOME}/.config/Slack
include /etc/firejail/whitelist-common.inc

#Options
blacklist /var
caps.drop all
name slack
netfilter
nogroups
nonewprivs
noroot
private-bin slack
private-dev
private-etc fonts,resolv.conf,ld.so.conf,ld.so.cache,localtime
private-tmp
protocol unix,inet,inet6,netlink
seccomp
shell none
