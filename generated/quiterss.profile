#
#Profile for quiterss
#

#No Blacklist Paths
noblacklist ${HOME}/quiterssfeeds.opml
noblacklist ${HOME}/.config/QuiteRss
noblacklist ${HOME}/.config/QuiteRssrc
noblacklist ${HOME}/.cache/QuiteRss
noblacklist ${HOME}/.local/share/QuiteRss

#Blacklist Paths
include /etc/firejail/disable-common.inc
include /etc/firejail/disable-programs.inc
include /etc/firejail/disable-passwdmgr.inc
include /etc/firejail/disable-devel.inc

#Whitelist Paths
whitelist ${HOME}/quiterssfeeds.opml
whitelist ${HOME}/.config/QuiteRss
whitelist ${HOME}/.config/QuiteRssrc
whitelist ${HOME}/.cache/QuiteRss
whitelist ${HOME}/.local/share/QuiteRss
include /etc/firejail/whitelist-common.inc

#Options
caps.drop all
netfilter
nonewprivs
nogroups
noroot
private-bin quiterss
private-dev
nosound
protocol unix,inet,inet6
seccomp
shell none
tracelog
