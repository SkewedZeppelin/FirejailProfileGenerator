#
#Profile for synfigstudio
#

#No Blacklist Paths
noblacklist ${HOME}/.synfig

#Blacklist Paths
include /etc/firejail/disable-common.inc
include /etc/firejail/disable-programs.inc
include /etc/firejail/disable-passwdmgr.inc
include /etc/firejail/disable-devel.inc

#Options
caps.drop all
ipc-namespace
net none
noexec ${HOME}
noexec /tmp
noroot
private-bin synfigstudio
private-dev
private-etc fonts,X11,synfig,synfig_modules.cfg
seccomp
shell none
