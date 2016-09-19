#
#Profile for linphone
#

#No Blacklist Paths
noblacklist ${DOWNLOADS}
noblacklist ${HOME}/.linphone-history.db
noblacklist ${HOME}/.linphonerc

#Blacklist Paths
include /etc/firejail/disable-common.inc
include /etc/firejail/disable-programs.inc
include /etc/firejail/disable-passwdmgr.inc
include /etc/firejail/disable-devel.inc

#Whitelist Paths
whitelist ${DOWNLOADS}
mkfile ${HOME}/.linphone-history.db
whitelist ${HOME}/.linphone-history.db
mkfile ${HOME}/.linphonerc
whitelist ${HOME}/.linphonerc
include /etc/firejail/whitelist-common.inc

#Options
caps.drop all
noroot
seccomp
