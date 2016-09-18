#
#Profile for inox
#

#No Blacklist Paths
noblacklist ${DOWNLOADS}
noblacklist ${HOME}/.config/inox
noblacklist ${HOME}/.cache/inox
noblacklist ${HOME}/.pki

#Blacklist Paths
include /etc/firejail/disable-common.inc
include /etc/firejail/disable-programs.inc
include /etc/firejail/disable-passwdmgr.inc

#Whitelist Paths
whitelist ${DOWNLOADS}
whitelist ${HOME}/.config/inox
whitelist ${HOME}/.cache/inox
whitelist ${HOME}/.pki
include /etc/firejail/whitelist-common.inc

#Options
netfilter
