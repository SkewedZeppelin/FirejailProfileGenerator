#
#Profile for chromium-dev
#

#No Blacklist Paths
noblacklist ${DOWNLOADS}
noblacklist ${HOME}/.cache/chromium-dev
noblacklist ${HOME}/.config/chromium-dev
noblacklist ${HOME}/.pki
noblacklist ${HOME}/.config/chromium-flags.conf

#Blacklist Paths
include /etc/firejail/disable-common.inc
include /etc/firejail/disable-programs.inc
include /etc/firejail/disable-passwdmgr.inc

#Whitelist Paths
whitelist ${DOWNLOADS}
mkdir ${HOME}/.cache/chromium-dev
whitelist ${HOME}/.cache/chromium-dev
mkdir ${HOME}/.config/chromium-dev
whitelist ${HOME}/.config/chromium-dev
mkdir ${HOME}/.pki
whitelist ${HOME}/.pki
mkfile ${HOME}/.config/chromium-flags.conf
whitelist ${HOME}/.config/chromium-flags.conf
include /etc/firejail/whitelist-common.inc

#Options
netfilter
