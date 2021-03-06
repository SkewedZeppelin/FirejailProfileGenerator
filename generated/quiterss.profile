#
#Profile for quiterss
#

#No Blacklist Paths
noblacklist ${HOME}/.cache/QuiteRss
noblacklist ${HOME}/.config/QuiteRss
noblacklist ${HOME}/.config/QuiteRssrc
noblacklist ${HOME}/.local/share/QuiteRss
noblacklist ${HOME}/quiterssfeeds.opml

#Blacklist Paths
include /etc/firejail/disable-common.inc
include /etc/firejail/disable-programs.inc
include /etc/firejail/disable-passwdmgr.inc
include /etc/firejail/disable-devel.inc

#Whitelist Paths
mkdir ${HOME}/.cache/QuiteRss
whitelist ${HOME}/.cache/QuiteRss
mkdir ${HOME}/.config/QuiteRss
whitelist ${HOME}/.config/QuiteRss
mkdir ${HOME}/.config/QuiteRssrc
whitelist ${HOME}/.config/QuiteRssrc
mkdir ${HOME}/.local/share/QuiteRss
whitelist ${HOME}/.local/share/QuiteRss
mkfile ${HOME}/quiterssfeeds.opml
whitelist ${HOME}/quiterssfeeds.opml
include /etc/firejail/whitelist-common.inc

#Options
caps.drop all
netfilter
nogroups
nonewprivs
noroot
nosound
private-bin quiterss
private-dev
protocol unix,inet,inet6
seccomp
shell none
tracelog
