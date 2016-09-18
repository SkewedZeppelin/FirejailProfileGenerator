#
#Profile for vivaldi
#

#No Blacklist Paths
noblacklist ${DOWNLOADS}
noblacklist ${HOME}/.config/vivaldi
noblacklist ${HOME}/.cache/vivaldi
noblacklist ${HOME}/.pki

#Blacklist Paths
include /etc/firejail/disable-common.inc
include /etc/firejail/disable-programs.inc
include /etc/firejail/disable-passwdmgr.inc
include /etc/firejail/disable-devel.inc

#Whitelist Paths
whitelist ${DOWNLOADS}
whitelist ${HOME}/.config/vivaldi
whitelist ${HOME}/.cache/vivaldi
whitelist ${HOME}/.pki
include /etc/firejail/whitelist-common.inc

#Options
netfilter nonewprivs
