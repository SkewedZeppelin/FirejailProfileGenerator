#
#Profile for gajim
#

#No Blacklist Paths
noblacklist ${HOME}/.cache/gajim
noblacklist ${HOME}/.local/share/gajim
noblacklist ${HOME}/.config/gajim
noblacklist ${DOWNLOADS}
noblacklist ${HOME}/.local/lib/python2.7/site-packages

#Blacklist Paths
include /etc/firejail/disable-common.inc
include /etc/firejail/disable-programs.inc
include /etc/firejail/disable-passwdmgr.inc
include /etc/firejail/disable-devel.inc

#Whitelist Paths
mkdir ${HOME}/.cache/gajim
whitelist ${HOME}/.cache/gajim
mkdir ${HOME}/.local/share/gajim
whitelist ${HOME}/.local/share/gajim
mkdir ${HOME}/.config/gajim
whitelist ${HOME}/.config/gajim
whitelist ${DOWNLOADS}
mkdir ${HOME}/.local/lib/python2.7/site-packages
whitelist ${HOME}/.local/lib/python2.7/site-packages
include /etc/firejail/whitelist-common.inc

#Options
read-only ${HOME}/.local/lib/python2.7/site-packages
caps.drop all
netfilter
nonewprivs
nogroups
noroot
protocol unix,inet,inet6
seccomp
shell none
private-dev
