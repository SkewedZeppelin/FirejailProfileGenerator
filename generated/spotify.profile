#
#Profile for spotify
#

#No Blacklist Paths
noblacklist ${HOME}/.cache/spotify
noblacklist ${HOME}/.config/spotify
noblacklist ${HOME}/.local/share/spotify

#Blacklist Paths
include /etc/firejail/disable-common.inc
include /etc/firejail/disable-programs.inc
include /etc/firejail/disable-passwdmgr.inc
include /etc/firejail/disable-devel.inc

#Whitelist Paths
mkdir ${HOME}/.cache/spotify
whitelist ${HOME}/.cache/spotify
mkdir ${HOME}/.config/spotify
whitelist ${HOME}/.config/spotify
mkdir ${HOME}/.local/share/spotify
whitelist ${HOME}/.local/share/spotify
include /etc/firejail/whitelist-common.inc

#Options
caps.drop all
netfilter
nogroups
nonewprivs
noroot
private-dev
protocol unix,inet,inet6,netlink
seccomp
shell none
