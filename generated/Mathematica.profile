#
#Profile for Mathematica
#

#No Blacklist Paths
noblacklist ${HOME}/.Mathematica
noblacklist ${HOME}/.Wolfram Research
noblacklist ${HOME}/Documents/Wolfram Mathematica

#Blacklist Paths
include /etc/firejail/disable-common.inc
include /etc/firejail/disable-programs.inc
include /etc/firejail/disable-passwdmgr.inc
include /etc/firejail/disable-devel.inc

#Whitelist Paths
whitelist ${HOME}/.Mathematica
whitelist ${HOME}/.Wolfram Research
whitelist ${HOME}/Documents/Wolfram Mathematica
include /etc/firejail/whitelist-common.inc

#Options
caps.drop all
nonewprivs
noroot
seccomp
