#
#Profile for opera
#

#No Blacklist Paths
noblacklist ${HOME}/.opera
noblacklist ${HOME}/.cache/opera
noblacklist ${HOME}/.config/opera
noblacklist ${DOWNLOADS}
noblacklist ${HOME}/.pki

#Blacklist Paths
include /etc/firejail/disable-common.inc
include /etc/firejail/disable-programs.inc
include /etc/firejail/disable-passwdmgr.inc
include /etc/firejail/disable-devel.inc

#Whitelist Paths
mkdir ${HOME}/.opera
whitelist ${HOME}/.opera
mkdir ${HOME}/.cache/opera
whitelist ${HOME}/.cache/opera
mkdir ${HOME}/.config/opera
whitelist ${HOME}/.config/opera
whitelist ${DOWNLOADS}
mkdir ${HOME}/.pki
whitelist ${HOME}/.pki
include /etc/firejail/whitelist-common.inc

#Options
netfilter
