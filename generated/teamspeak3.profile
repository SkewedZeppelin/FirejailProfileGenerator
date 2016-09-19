#
#Profile for teamspeak3
#

#No Blacklist Paths
noblacklist ${DOWNLOADS}
noblacklist ${HOME}/.ts3client

#Blacklist Paths
include /etc/firejail/disable-common.inc
include /etc/firejail/disable-programs.inc
include /etc/firejail/disable-passwdmgr.inc
include /etc/firejail/disable-devel.inc

#Whitelist Paths
whitelist ${DOWNLOADS}
mkdir ${HOME}/.ts3client
whitelist ${HOME}/.ts3client
include /etc/firejail/whitelist-common.inc

#Options
caps.drop all
netfilter
noroot
protocol unix,inet,inet6
seccomp
