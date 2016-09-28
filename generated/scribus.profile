#
#Profile for scribus
#

#No Blacklist Paths
noblacklist ${HOME}/.scribus

#Blacklist Paths
include /etc/firejail/disable-common.inc
include /etc/firejail/disable-programs.inc
include /etc/firejail/disable-passwdmgr.inc
include /etc/firejail/disable-devel.inc

#Options
caps.drop all
noroot
private-bin scribus,gs
private-dev
protocol unix
seccomp
shell none
