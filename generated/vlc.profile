#
#Profile for vlc
#

#No Blacklist Paths
noblacklist ${HOME}/.config/vlc

#Blacklist Paths
include /etc/firejail/disable-common.inc
include /etc/firejail/disable-programs.inc
include /etc/firejail/disable-passwdmgr.inc
include /etc/firejail/disable-devel.inc

#Options
caps.drop all
netfilter
nogroups
nonewprivs
noroot
private-bin vlc,cvlc,nvlc,rvlc,qvlc,svlc
private-dev
private-tmp
protocol unix,inet,inet6
seccomp
shell none
