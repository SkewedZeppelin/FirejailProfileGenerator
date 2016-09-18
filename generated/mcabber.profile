#
#Profile for mcabber
#

#No Blacklist Paths
noblacklist ${HOME}/.mcabber
noblacklist ${HOME}/.mcabberrc

#Blacklist Paths
include /etc/firejail/disable-common.inc
include /etc/firejail/disable-programs.inc
include /etc/firejail/disable-passwdmgr.inc
include /etc/firejail/disable-devel.inc

#Options
caps.drop all
netfilter
nonewprivs
noroot
protocol inet,inet6
seccomp
private-bin mcabber
private-etc null
private-dev
shell none
nosound
