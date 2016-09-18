#
#Profile for cherrytree
#

#No Blacklist Explicit Paths
noblacklist /usr/bin/python2*
noblacklist /usr/bin/python3*

#No Blacklist Paths
noblacklist ${HOME}/cherrytree
noblacklist ${HOME}/.config/cherrytree
noblacklist ${HOME}/.local/share/

#Blacklist Paths
include /etc/firejail/disable-common.inc
include /etc/firejail/disable-programs.inc
include /etc/firejail/disable-passwdmgr.inc
include /etc/firejail/disable-devel.inc

#Whitelist Paths
mkdir ${HOME}/cherrytree
whitelist ${HOME}/cherrytree
mkdir ${HOME}/.config/cherrytree
whitelist ${HOME}/.config/cherrytree
mkdir ${HOME}/.local/share/
whitelist ${HOME}/.local/share/
include /etc/firejail/whitelist-common.inc

#Options
caps.drop all
netfilter
nonewprivs
noroot
nosound
seccomp
protocol unix,inet,inet6,netlink
tracelog
