#
#Profile for mpd
#

noblacklist ${HOME}/.mpdconf

#Blacklist Paths
include /etc/firejail/disable-common.inc
include /etc/firejail/disable-programs.inc
include /etc/firejail/disable-passwdmgr.inc
include /etc/firejail/disable-devel.inc

#Options
caps.drop all
noroot
private-bin mpd,bash
private-dev
seccomp
