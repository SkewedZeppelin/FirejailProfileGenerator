#
#Profile for polari
#

#No Blacklist Paths
noblacklist ${DOWNLOADS}
noblacklist ${HOME}/.local/share/Empathy
noblacklist ${HOME}/.local/share/telepathy
noblacklist ${HOME}/.local/share/TpLogger
noblacklist ${HOME}/.config/telepathy-account-widgets
noblacklist ${HOME}/.cache/telepathy
noblacklist ${HOME}/.purple

#Blacklist Paths
include /etc/firejail/disable-common.inc
include /etc/firejail/disable-programs.inc
include /etc/firejail/disable-passwdmgr.inc
include /etc/firejail/disable-devel.inc

#Whitelist Paths
mkdir ${DOWNLOADS}
whitelist ${DOWNLOADS}
mkdir ${HOME}/.local/share/Empathy
whitelist ${HOME}/.local/share/Empathy
mkdir ${HOME}/.local/share/telepathy
whitelist ${HOME}/.local/share/telepathy
mkdir ${HOME}/.local/share/TpLogger
whitelist ${HOME}/.local/share/TpLogger
mkdir ${HOME}/.config/telepathy-account-widgets
whitelist ${HOME}/.config/telepathy-account-widgets
mkdir ${HOME}/.cache/telepathy
whitelist ${HOME}/.cache/telepathy
mkdir ${HOME}/.purple
whitelist ${HOME}/.purple
include /etc/firejail/whitelist-common.inc

#Options
caps.drop all
netfilter
nonewprivs
noroot
protocol unix,inet,inet6
seccomp
