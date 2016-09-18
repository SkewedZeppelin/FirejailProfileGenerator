#
#Profile for chromium
#

#No Blacklist Paths
noblacklist ${DOWNLOADS}
noblacklist ${HOME}/.config/chromium
noblacklist ${HOME}/.cache/chromium
noblacklist ${HOME}/.pki

#Blacklist Paths
include /etc/firejail/disable-common.inc
include /etc/firejail/disable-programs.inc
include /etc/firejail/disable-passwdmgr.inc

#Whitelist Paths
whitelist ${DOWNLOADS}
whitelist ${HOME}/.config/chromium
whitelist ${HOME}/.cache/chromium
whitelist ${HOME}/.pki
include /etc/firejail/whitelist-common.inc

#Options
netfilter
