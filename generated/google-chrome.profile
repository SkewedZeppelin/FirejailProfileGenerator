#
#Profile for google-chrome
#

#No Blacklist Paths
noblacklist ${DOWNLOADS}
noblacklist ${HOME}/.config/google-chrome
noblacklist ${HOME}/.cache/google-chrome
noblacklist ${HOME}/.pki

#Blacklist Paths
include /etc/firejail/disable-common.inc
include /etc/firejail/disable-programs.inc
include /etc/firejail/disable-passwdmgr.inc

#Whitelist Paths
whitelist ${DOWNLOADS}
mkdir ${HOME}/.config/google-chrome
whitelist ${HOME}/.config/google-chrome
mkdir ${HOME}/.cache/google-chrome
whitelist ${HOME}/.cache/google-chrome
mkdir ${HOME}/.pki
whitelist ${HOME}/.pki
include /etc/firejail/whitelist-common.inc

#Options
netfilter
