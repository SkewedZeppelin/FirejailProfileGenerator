#
#Profile for mumble
#

#No Blacklist Paths
noblacklist ${HOME}/.config/Mumble
noblacklist ${HOME}/.local/share/data/Mumble
noblacklist ${HOME}/.local/share/Mumble

#Blacklist Paths
include /etc/firejail/disable-common.inc
include /etc/firejail/disable-programs.inc
include /etc/firejail/disable-passwdmgr.inc
include /etc/firejail/disable-devel.inc

#Whitelist Paths
whitelist ${HOME}/.config/Mumble
whitelist ${HOME}/.local/share/data/Mumble
whitelist ${HOME}/.local/share/Mumble
include /etc/firejail/whitelist-common.inc

#Options
caps.drop all
netfilter
nonewprivs
noroot
protocol unix,inet,inet6
seccomp
