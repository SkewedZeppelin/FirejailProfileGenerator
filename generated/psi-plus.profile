#
#Profile for psi-plus
#

#No Blacklist Paths
noblacklist ${DOWNLOADS}
noblacklist ${HOME}/.config/psi+
noblacklist ${HOME}/.local/share/psi+

#Blacklist Paths
include /etc/firejail/disable-common.inc
include /etc/firejail/disable-programs.inc
include /etc/firejail/disable-passwdmgr.inc
include /etc/firejail/disable-devel.inc

#Whitelist Paths
whitelist ${DOWNLOADS}
mkdir ${HOME}/.config/psi+
whitelist ${HOME}/.config/psi+
mkdir ${HOME}/.local/share/psi+
whitelist ${HOME}/.local/share/psi+
include /etc/firejail/whitelist-common.inc

#Options
caps.drop all
netfilter
noroot
protocol unix,inet,inet6
seccomp
