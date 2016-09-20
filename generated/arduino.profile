#
#Profile for arduino
#

#No Blacklist Paths
noblacklist ${HOME}/.arduino15
noblacklist ${HOME}/Arduino

#Blacklist Paths
include /etc/firejail/disable-common.inc
include /etc/firejail/disable-programs.inc
include /etc/firejail/disable-passwdmgr.inc
include /etc/firejail/disable-devel.inc

#Whitelist Paths
mkdir ${HOME}/.arduino15
whitelist ${HOME}/.arduino15
mkdir ${HOME}/Arduino
whitelist ${HOME}/Arduino
include /etc/firejail/whitelist-common.inc

#Options
caps.drop all
netfilter
nonewprivs
noroot
protocol unix,inet,inet6
seccomp
