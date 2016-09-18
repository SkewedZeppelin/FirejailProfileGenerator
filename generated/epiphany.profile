#
#Profile for epiphany
#

#No Blacklist Paths
noblacklist ${HOME}/.config/epiphany
noblacklist ${HOME}/.cache/epiphany
noblacklist ${HOME}/.local/share/epiphany
noblacklist ${DOWNLOADS}

#Blacklist Paths
include /etc/firejail/disable-common.inc
include /etc/firejail/disable-programs.inc
include /etc/firejail/disable-passwdmgr.inc
include /etc/firejail/disable-devel.inc

#Whitelist Paths
mkdir ${HOME}/.config/epiphany
whitelist ${HOME}/.config/epiphany
mkdir ${HOME}/.cache/epiphany
whitelist ${HOME}/.cache/epiphany
mkdir ${HOME}/.local/share/epiphany
whitelist ${HOME}/.local/share/epiphany
whitelist ${DOWNLOADS}
include /etc/firejail/whitelist-common.inc

#Options
caps.drop all
netfilter
nonewprivs
protocol unix,inet,inet6
seccomp
