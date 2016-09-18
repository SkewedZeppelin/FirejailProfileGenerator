#
#Profile for google-play-music-desktop-player
#

#No Blacklist Paths
noblacklist ${HOME}/.config/Google Play Music Desktop Player

#Blacklist Paths
include /etc/firejail/disable-common.inc
include /etc/firejail/disable-programs.inc
include /etc/firejail/disable-passwdmgr.inc
include /etc/firejail/disable-devel.inc

#Whitelist Paths
mkdir ${HOME}/.config/Google Play Music Desktop Player
whitelist ${HOME}/.config/Google Play Music Desktop Player
include /etc/firejail/whitelist-common.inc

#Options
caps.drop all
nonewprivs
noroot
netfilter
protocol unix,inet,inet6,netlink
seccomp
