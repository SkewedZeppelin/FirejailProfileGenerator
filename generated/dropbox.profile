#
#Profile for dropbox
#

#No Blacklist Paths
noblacklist ${HOME}/.config/autostart
noblacklist ${HOME}/.dropbox-dist
noblacklist ${HOME}/Dropbox
noblacklist ${HOME}/.config/autostart/dropbox.desktop

#Blacklist Paths
include /etc/firejail/disable-common.inc
include /etc/firejail/disable-programs.inc
include /etc/firejail/disable-passwdmgr.inc
include /etc/firejail/disable-devel.inc

#Whitelist Paths
mkdir ${HOME}/.config/autostart
whitelist ${HOME}/.config/autostart
mkdir ${HOME}/.dropbox-dist
whitelist ${HOME}/.dropbox-dist
mkdir ${HOME}/Dropbox
whitelist ${HOME}/Dropbox
mkfile ${HOME}/.config/autostart/dropbox.desktop
whitelist ${HOME}/.config/autostart/dropbox.desktop
include /etc/firejail/whitelist-common.inc

#Options
caps.drop all
nonewprivs
noroot
protocol unix,inet,inet6
seccomp
