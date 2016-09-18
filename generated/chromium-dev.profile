#
#Profile for chromium-dev
#

#No Blacklist Paths
noblacklist ${DOWNLOADS}
noblacklist ${HOME}/.config/chromium-dev
noblacklist ${HOME}/.cache/chromium-dev
noblacklist ${HOME}/.pki

#Blacklist Paths
include /etc/firejail/disable-common.inc
include /etc/firejail/disable-programs.inc
include /etc/firejail/disable-passwdmgr.inc

#Whitelist Paths
whitelist ${DOWNLOADS}
mkdir ${HOME}/.config/chromium-dev
whitelist ${HOME}/.config/chromium-dev
mkdir ${HOME}/.cache/chromium-dev
whitelist ${HOME}/.cache/chromium-dev
mkdir ${HOME}/.pki
whitelist ${HOME}/.pki
include /etc/firejail/whitelist-common.inc

#Options
netfilter
