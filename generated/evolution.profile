#
#Profile for evolution
#

#No Blacklist Paths
noblacklist ${DOWNLOADS}
noblacklist ~/.cache/evolution
noblacklist ~/.config/evolution
noblacklist ~/.gnupg
noblacklist ~/.local/share/evolution
noblacklist ~/.pki

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
private-dev
private-tmp
protocol unix,inet,inet6
seccomp
shell none
