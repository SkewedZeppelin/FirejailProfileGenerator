#
#Profile for empathy
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
whitelist ${DOWNLOADS}
whitelist ${HOME}/.local/share/Empathy
whitelist ${HOME}/.local/share/telepathy
whitelist ${HOME}/.local/share/TpLogger
whitelist ${HOME}/.config/telepathy-account-widgets
whitelist ${HOME}/.cache/telepathy
whitelist ${HOME}/.purple
include /etc/firejail/whitelist-common.inc

#Options
caps.drop all
nonewprivs
noroot
protocol unix,inet,inet6
seccomp
