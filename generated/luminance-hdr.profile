#
#Profile for luminance-hdr
#

#No Blacklist Paths
noblacklist ${HOME}/.LuminanceHDR
noblacklist ${HOME}/.config/Luminance

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
nogroups
noroot
nosound
private-bin luminance-hdr,luminance-hdr-cli,align_image_stack
private-dev
private-etc fonts,X11,alternatives
seccomp
shell none
