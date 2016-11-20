#
#Profile for empathy
#

#No Blacklist Paths
noblacklist ${DOWNLOADS}
noblacklist ${HOME}/.cache/champlain
noblacklist ${HOME}/.cache/telepathy
noblacklist ${HOME}/.config/telepathy-account-widgets
noblacklist ${HOME}/.local/share/Empathy
noblacklist ${HOME}/.local/share/TpLogger
noblacklist ${HOME}/.local/share/telepathy
noblacklist ${HOME}/.purple

#Blacklist Paths
include /etc/firejail/disable-common.inc
include /etc/firejail/disable-programs.inc
include /etc/firejail/disable-passwdmgr.inc
include /etc/firejail/disable-devel.inc

#Whitelist Paths
whitelist ${DOWNLOADS}
mkdir ${HOME}/.cache/champlain
whitelist ${HOME}/.cache/champlain
mkdir ${HOME}/.cache/telepathy
whitelist ${HOME}/.cache/telepathy
mkdir ${HOME}/.config/telepathy-account-widgets
whitelist ${HOME}/.config/telepathy-account-widgets
mkdir ${HOME}/.local/share/Empathy
whitelist ${HOME}/.local/share/Empathy
mkdir ${HOME}/.local/share/TpLogger
whitelist ${HOME}/.local/share/TpLogger
mkdir ${HOME}/.local/share/telepathy
whitelist ${HOME}/.local/share/telepathy
mkdir ${HOME}/.purple
whitelist ${HOME}/.purple
include /etc/firejail/whitelist-common.inc

#Options
caps.drop all
nogroups
nonewprivs
noroot
protocol unix,inet,inet6
seccomp
