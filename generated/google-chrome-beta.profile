#
#Profile for google-chrome-beta
#

#No Blacklist Paths
noblacklist ${DOWNLOADS}
noblacklist ${HOME}/.cache/google-chrome-beta
noblacklist ${HOME}/.config/google-chrome-beta
noblacklist ${HOME}/.pki

#Blacklist Paths
include /etc/firejail/disable-common.inc
include /etc/firejail/disable-programs.inc
include /etc/firejail/disable-passwdmgr.inc

#Whitelist Paths
whitelist ${DOWNLOADS}
mkdir ${HOME}/.cache/google-chrome-beta
whitelist ${HOME}/.cache/google-chrome-beta
mkdir ${HOME}/.config/google-chrome-beta
whitelist ${HOME}/.config/google-chrome-beta
mkdir ${HOME}/.pki
whitelist ${HOME}/.pki
include /etc/firejail/whitelist-common.inc

#Options
netfilter
