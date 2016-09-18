#
#Profile for dropbox
#

#No Blacklist Paths
noblacklist ${HOME}/.config/autostart
noblacklist ${HOME}/Dropbox
noblacklist ${HOME}/.dropbox-dist
noblacklist ${HOME}/.config/autostart/dropbox.desktop

#Blacklist Paths
include /etc/firejail/disable-common.inc
include /etc/firejail/disable-programs.inc
include /etc/firejail/disable-passwdmgr.inc
include /etc/firejail/disable-devel.inc

#Whitelist Paths
whitelist ${HOME}/.config/autostart
whitelist ${HOME}/Dropbox
whitelist ${HOME}/.dropbox-dist
whitelist ${HOME}/.config/autostart/dropbox.desktop
include /etc/firejail/whitelist-common.inc

#Options
caps.drop all
nonewprivs
noroot
protocol unix,inet,inet6
seccomp
