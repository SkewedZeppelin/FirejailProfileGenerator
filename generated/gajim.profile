#
#Profile for gajim
#

#No Blacklist Paths
noblacklist ${DOWNLOADS}
noblacklist ${HOME}/.cache/gajim
noblacklist ${HOME}/.config/gajim
noblacklist ${HOME}/.local/lib/python2.7/site-packages
noblacklist ${HOME}/.local/share/gajim

#Blacklist Paths
include /etc/firejail/disable-common.inc
include /etc/firejail/disable-programs.inc
include /etc/firejail/disable-passwdmgr.inc
include /etc/firejail/disable-devel.inc

#Whitelist Paths
whitelist ${DOWNLOADS}
mkdir ${HOME}/.cache/gajim
whitelist ${HOME}/.cache/gajim
mkdir ${HOME}/.config/gajim
whitelist ${HOME}/.config/gajim
mkdir ${HOME}/.local/lib/python2.7/site-packages
whitelist ${HOME}/.local/lib/python2.7/site-packages
mkdir ${HOME}/.local/share/gajim
whitelist ${HOME}/.local/share/gajim
include /etc/firejail/whitelist-common.inc

#Options
caps.drop all
netfilter
nogroups
nonewprivs
noroot
private-dev
protocol unix,inet,inet6
read-only ${HOME}/.local/lib/python2.7/site-packages
seccomp
shell none
