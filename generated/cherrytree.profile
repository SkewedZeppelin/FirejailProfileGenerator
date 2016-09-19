#
#Profile for cherrytree
#

#No Blacklist Explicit Paths
noblacklist /usr/bin/python2*
noblacklist /usr/bin/python3*

#No Blacklist Paths
noblacklist ${HOME}/.config/cherrytree
noblacklist ${HOME}/.local/share/
noblacklist ${HOME}/cherrytree

#Blacklist Paths
include /etc/firejail/disable-common.inc
include /etc/firejail/disable-programs.inc
include /etc/firejail/disable-passwdmgr.inc
include /etc/firejail/disable-devel.inc

#Whitelist Paths
mkdir ${HOME}/.config/cherrytree
whitelist ${HOME}/.config/cherrytree
mkdir ${HOME}/.local/share/
whitelist ${HOME}/.local/share/
mkdir ${HOME}/cherrytree
whitelist ${HOME}/cherrytree
include /etc/firejail/whitelist-common.inc

#Options
caps.drop all
netfilter
nonewprivs
noroot
nosound
protocol unix,inet,inet6,netlink
seccomp
tracelog
