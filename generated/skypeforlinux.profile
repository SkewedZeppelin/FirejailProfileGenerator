#
#Profile for skypeforlinux
#

#No Blacklist Paths
noblacklist ${HOME}/.config/skypeforlinux

#Blacklist Paths
include /etc/firejail/disable-common.inc
include /etc/firejail/disable-programs.inc
include /etc/firejail/disable-passwdmgr.inc

#Options
caps.drop all
netfilter
noroot
protocol unix,inet,inet6,netlink
seccomp
