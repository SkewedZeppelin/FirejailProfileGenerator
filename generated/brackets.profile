#
#Profile for brackets
#

#No Blacklist Explicit Paths
noblacklist /opt/brackets
noblacklist /opt/google

#No Blacklist Paths
noblacklist ${HOME}/.config/Brackets

#Blacklist Paths
include /etc/firejail/disable-common.inc
include /etc/firejail/disable-programs.inc
include /etc/firejail/disable-passwdmgr.inc
include /etc/firejail/disable-devel.inc

#Options
private-bin bash,brackets,readlink,dirname,google-chrome,cat
private-dev
