#
#Profile for zoom
#

#No Blacklist Paths
noblacklist ${HOME}/.zoom
noblacklist ${HOME}/.config/zoomus.conf

#Blacklist Paths
include /etc/firejail/disable-common.inc
include /etc/firejail/disable-programs.inc
include /etc/firejail/disable-passwdmgr.inc
include /etc/firejail/disable-devel.inc

#Whitelist Paths
mkdir ${HOME}/.zoom
whitelist ${HOME}/.zoom
mkfile ${HOME}/.config/zoomus.conf
whitelist ${HOME}/.config/zoomus.conf
include /etc/firejail/whitelist-common.inc

#Options
caps.drop all
netfilter
nonewprivs
noroot
private-tmp
protocol unix,inet,inet6
seccomp
