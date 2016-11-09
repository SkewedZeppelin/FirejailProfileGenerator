#
#Profile for evolution
#

#No Blacklist Paths
noblacklist ${DOWNLOADS}
noblacklist ${HOME}/.cache/evolution
noblacklist ${HOME}/.config/evolution
noblacklist ${HOME}/.gnupg
noblacklist ${HOME}/.local/share/evolution
noblacklist ${HOME}/.pki

#Blacklist Paths
include /etc/firejail/disable-common.inc
include /etc/firejail/disable-programs.inc
include /etc/firejail/disable-passwdmgr.inc
include /etc/firejail/disable-devel.inc

#Options
caps.drop all
netfilter
nogroups
nonewprivs
noroot
nosound
private-dev
private-tmp
protocol unix,inet,inet6
seccomp
shell none
