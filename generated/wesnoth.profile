#
#Profile for wesnoth
#

#No Blacklist Paths
noblacklist ${HOME}/.cache/wesnoth
noblacklist ${HOME}/.config/wesnoth
noblacklist ${HOME}/.local/share/wesnoth

#Blacklist Paths
include /etc/firejail/disable-common.inc
include /etc/firejail/disable-programs.inc
include /etc/firejail/disable-passwdmgr.inc
include /etc/firejail/disable-devel.inc

#Whitelist Paths
mkdir ${HOME}/.cache/wesnoth
whitelist ${HOME}/.cache/wesnoth
mkdir ${HOME}/.config/wesnoth
whitelist ${HOME}/.config/wesnoth
mkdir ${HOME}/.local/share/wesnoth
whitelist ${HOME}/.local/share/wesnoth
include /etc/firejail/whitelist-common.inc

#Options
caps.drop all
nonewprivs
noroot
private-dev
protocol unix,inet,inet6
seccomp
