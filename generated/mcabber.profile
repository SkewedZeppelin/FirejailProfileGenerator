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
nosound
private-bin mcabber
private-dev
private-etc null
protocol inet,inet6
seccomp
shell none
