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
whitelist ${HOME}/.opera
whitelist ${HOME}/.cache/opera
whitelist ${HOME}/.config/opera
whitelist ${DOWNLOADS}
whitelist ${HOME}/.pki
include /etc/firejail/whitelist-common.inc

#Options
netfilter
