#
#Profile for epiphany
#

#No Blacklist Paths
noblacklist ${DOWNLOADS}
noblacklist ${HOME}/.cache/epiphany
noblacklist ${HOME}/.config/epiphany
noblacklist ${HOME}/.local/share/epiphany

#Blacklist Paths
include /etc/firejail/disable-common.inc
include /etc/firejail/disable-programs.inc
include /etc/firejail/disable-passwdmgr.inc
include /etc/firejail/disable-devel.inc

#Whitelist Paths
whitelist ${DOWNLOADS}
mkdir ${HOME}/.cache/epiphany
whitelist ${HOME}/.cache/epiphany
mkdir ${HOME}/.config/epiphany
whitelist ${HOME}/.config/epiphany
mkdir ${HOME}/.local/share/epiphany
whitelist ${HOME}/.local/share/epiphany
include /etc/firejail/whitelist-common.inc

#Options
caps.drop all
netfilter
nonewprivs
protocol unix,inet,inet6
seccomp
