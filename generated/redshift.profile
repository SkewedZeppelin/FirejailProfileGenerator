#
#Profile for redshift
#

noblacklist ${HOME}/.config/redshift.conf

#Blacklist Paths
include /etc/firejail/disable-common.inc
include /etc/firejail/disable-programs.inc
include /etc/firejail/disable-passwdmgr.inc
include /etc/firejail/disable-devel.inc

mkfile ${HOME}/.config/redshift.conf
whitelist ${HOME}/.config/redshift.conf
include /etc/firejail/whitelist-common.inc

#Options
caps.drop all
netfilter
nonewprivs
noroot
protocol unix,inet,inet6
seccomp
