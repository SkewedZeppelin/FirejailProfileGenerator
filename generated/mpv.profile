#
#Profile for mpv
#

#No Blacklist Paths
noblacklist ${HOME}/.config/mpv

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
private-bin mpv,youtube-dl,python2.7
protocol unix,inet,inet6
seccomp
shell none
