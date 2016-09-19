#
#Profile for vivaldi
#

#No Blacklist Paths
noblacklist ${DOWNLOADS}
noblacklist ${HOME}/.cache/vivaldi
noblacklist ${HOME}/.config/vivaldi
noblacklist ${HOME}/.pki

#Blacklist Paths
include /etc/firejail/disable-common.inc
include /etc/firejail/disable-programs.inc
include /etc/firejail/disable-passwdmgr.inc
include /etc/firejail/disable-devel.inc

#Whitelist Paths
whitelist ${DOWNLOADS}
mkdir ${HOME}/.cache/vivaldi
whitelist ${HOME}/.cache/vivaldi
mkdir ${HOME}/.config/vivaldi
whitelist ${HOME}/.config/vivaldi
mkdir ${HOME}/.pki
whitelist ${HOME}/.pki
include /etc/firejail/whitelist-common.inc

#Options
netfilter nonewprivs
