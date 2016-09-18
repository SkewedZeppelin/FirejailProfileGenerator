#
#Profile for steam
#

#No Blacklist Paths
noblacklist ${HOME}/.steampath
noblacklist ${HOME}/.steampid
noblacklist ${HOME}/.steam
noblacklist ${HOME}/.local/share/Steam
noblacklist ${HOME}/.local/share/steam
noblacklist ${HOME}/My Games
noblacklist ${HOME}/.killingfloor
noblacklist ${HOME}/.local/share/aspyr-media
noblacklist ${HOME}/.local/share/feral-interactive
noblacklist ${HOME}/.local/share/SuperHexagon
noblacklist ${HOME}/.local/share/vulkan
noblacklist ${HOME}/.local/share/vpltd
noblacklist ${HOME}/.nv
noblacklist ${HOME}/.local/share/Terraria

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
protocol unix,inet,inet6,netlink
seccomp
