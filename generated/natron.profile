#
#Profile for natron
#

#No Blacklist Explicit Paths
noblacklist /opt/natron/

#No Blacklist Paths
noblacklist ${HOME}/.Natron
noblacklist ${HOME}/.cache/INRIA
noblacklist ${HOME}/.config/INRIA

#Blacklist Paths
include /etc/firejail/disable-common.inc
include /etc/firejail/disable-programs.inc
include /etc/firejail/disable-passwdmgr.inc
include /etc/firejail/disable-devel.inc

#Options
ipc-namespace
noexec ${HOME}
noexec /tmp
private-bin natron
private-etc fonts,X11,pulse
shell none
whitelist /tmp/.X11-unix/
