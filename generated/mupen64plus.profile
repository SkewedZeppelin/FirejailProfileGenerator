#
#Profile for mupen64plus
#

#No Blacklist Paths
noblacklist ${HOME}/.config/mupen64plus
noblacklist ${HOME}/.local/share/mupen64plus

#Blacklist Paths
include /etc/firejail/disable-common.inc
include /etc/firejail/disable-programs.inc
include /etc/firejail/disable-passwdmgr.inc
include /etc/firejail/disable-devel.inc

#Whitelist Paths
mkdir ${HOME}/.config/mupen64plus
whitelist ${HOME}/.config/mupen64plus
mkdir ${HOME}/.local/share/mupen64plus
whitelist ${HOME}/.local/share/mupen64plus
include /etc/firejail/whitelist-common.inc

#Options
caps.drop all
net none
nonewprivs
noroot
seccomp
