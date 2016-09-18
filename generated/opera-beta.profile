#
#Profile for opera-beta
#

#No Blacklist Paths
noblacklist ${HOME}/.opera-beta
noblacklist ${HOME}/.cache/opera-beta
noblacklist ${HOME}/.config/opera-beta
noblacklist ${DOWNLOADS}
noblacklist ${HOME}/.pki

#Blacklist Paths
include /etc/firejail/disable-common.inc
include /etc/firejail/disable-programs.inc
include /etc/firejail/disable-passwdmgr.inc
include /etc/firejail/disable-devel.inc

#Whitelist Paths
mkdir ${HOME}/.opera-beta
whitelist ${HOME}/.opera-beta
mkdir ${HOME}/.cache/opera-beta
whitelist ${HOME}/.cache/opera-beta
mkdir ${HOME}/.config/opera-beta
whitelist ${HOME}/.config/opera-beta
mkdir ${DOWNLOADS}
whitelist ${DOWNLOADS}
mkdir ${HOME}/.pki
whitelist ${HOME}/.pki
include /etc/firejail/whitelist-common.inc

#Options
netfilter
