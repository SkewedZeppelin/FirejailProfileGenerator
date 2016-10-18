#
#Profile for chromium
#

#No Blacklist Paths
noblacklist ${DOWNLOADS}
noblacklist ${HOME}/.cache/chromium
noblacklist ${HOME}/.config/chromium
noblacklist ${HOME}/.pki
noblacklist ${HOME}/.config/chromium-flags.conf

#Blacklist Paths
include /etc/firejail/disable-common.inc
include /etc/firejail/disable-programs.inc
include /etc/firejail/disable-passwdmgr.inc

#Whitelist Paths
whitelist ${DOWNLOADS}
mkdir ${HOME}/.cache/chromium
whitelist ${HOME}/.cache/chromium
mkdir ${HOME}/.config/chromium
whitelist ${HOME}/.config/chromium
mkdir ${HOME}/.pki
whitelist ${HOME}/.pki
mkfile ${HOME}/.config/chromium-flags.conf
whitelist ${HOME}/.config/chromium-flags.conf
include /etc/firejail/whitelist-common.inc

#Options
netfilter
