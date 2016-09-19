#
#Profile for filezilla
#

#No Blacklist Paths
noblacklist ${HOME}/.config/filezilla
noblacklist ${HOME}/.filezilla

#Blacklist Paths
include /etc/firejail/disable-common.inc
include /etc/firejail/disable-programs.inc
include /etc/firejail/disable-passwdmgr.inc
include /etc/firejail/disable-devel.inc

#Options
caps.drop all
netfilter
nonewprivs
noroot
nosound
nosound
private-bin filezilla,uname,sh,python,lsb_release,fzputtygen,fzsftp
private-dev
protocol unix,inet,inet6
seccomp
shell none
