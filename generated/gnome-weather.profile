#
#Profile for gnome-weather
#

#No Blacklist Paths
noblacklist ${HOME}/.cache/libgweather

#Blacklist Paths
include /etc/firejail/disable-common.inc
include /etc/firejail/disable-programs.inc
include /etc/firejail/disable-passwdmgr.inc
include /etc/firejail/disable-devel.inc

#Whitelist Paths
mkdir ${HOME}/.cache/libgweather
whitelist ${HOME}/.cache/libgweather
include /etc/firejail/whitelist-common.inc

#Options
caps.drop all
netfilter
nonewprivs
noroot
protocol unix,inet,inet6
seccomp
