#
#Profile for google-chrome-unstable
#

#No Blacklist Paths
noblacklist ${DOWNLOADS}
noblacklist ${HOME}/.config/google-chrome-unstable
noblacklist ${HOME}/.cache/google-chrome-unstable
noblacklist ${HOME}/.pki

#Blacklist Paths
include /etc/firejail/disable-common.inc
include /etc/firejail/disable-programs.inc
include /etc/firejail/disable-passwdmgr.inc

#Whitelist Paths
whitelist ${DOWNLOADS}
mkdir ${HOME}/.config/google-chrome-unstable
whitelist ${HOME}/.config/google-chrome-unstable
mkdir ${HOME}/.cache/google-chrome-unstable
whitelist ${HOME}/.cache/google-chrome-unstable
mkdir ${HOME}/.pki
whitelist ${HOME}/.pki
include /etc/firejail/whitelist-common.inc

#Options
netfilter
