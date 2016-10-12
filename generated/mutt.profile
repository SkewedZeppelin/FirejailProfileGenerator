#
#Profile for mutt
#

#No Blacklist Explicit Paths
noblacklist ${HOME}/.gnupg
noblacklist ${HOME}/.mail
noblacklist ${HOME}/.mailcap

#No Blacklist Paths
noblacklist ${HOME}/.cache/mutt
noblacklist ${HOME}/.mutt
noblacklist ${HOME}/.muttrc

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
protocol unix,inet,inet6
seccomp
shell none
