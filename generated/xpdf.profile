#
#Profile for xpdf
#

noblacklist ${HOME}/.xpdfrc

#Blacklist Paths
include /etc/firejail/disable-common.inc
include /etc/firejail/disable-programs.inc
include /etc/firejail/disable-passwdmgr.inc
include /etc/firejail/disable-devel.inc

#Options
caps.drop all
net none
nonewprivs
noroot
private-dev
private-tmp
protocol unix
seccomp
shell none
