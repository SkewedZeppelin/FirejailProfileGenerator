#
#Profile for snap
#

#No Blacklist Paths
noblacklist ${HOME}/snap
noblacklist ${DOWNLOADS}

#Blacklist Paths
include /etc/firejail/disable-common.inc
include /etc/firejail/disable-programs.inc
include /etc/firejail/disable-passwdmgr.inc

#Options
caps.keep chown,sys_admin
