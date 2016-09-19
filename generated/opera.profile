#
#Profile for opera
#

#No Blacklist Paths
noblacklist ${DOWNLOADS}
noblacklist ${HOME}/.cache/opera
noblacklist ${HOME}/.config/opera
noblacklist ${HOME}/.opera
noblacklist ${HOME}/.pki

#Blacklist Paths
include /etc/firejail/disable-common.inc
include /etc/firejail/disable-programs.inc
include /etc/firejail/disable-passwdmgr.inc
include /etc/firejail/disable-devel.inc

#Whitelist Paths
whitelist ${DOWNLOADS}
mkdir ${HOME}/.cache/opera
whitelist ${HOME}/.cache/opera
mkdir ${HOME}/.config/opera
whitelist ${HOME}/.config/opera
mkdir ${HOME}/.opera
whitelist ${HOME}/.opera
mkdir ${HOME}/.pki
whitelist ${HOME}/.pki
include /etc/firejail/whitelist-common.inc

#Options
netfilter
