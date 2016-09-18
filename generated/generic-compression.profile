#
#Profile for generic-compression
#

#No Blacklist Explicit Paths
noblacklist /sbin
noblacklist /usr/sbin

#Blacklist Paths
include /etc/firejail/disable-common.inc
include /etc/firejail/disable-programs.inc
include /etc/firejail/disable-passwdmgr.inc
include /etc/firejail/disable-devel.inc

#Options
quiet
tracelog
net none
shell none
private-bin sh,tar,gtar,compress,gzip,lzma,xz,bzip2,lbzip2,lzip,lzop,unrar,unzip,xzdec
private-dev
private-etc passwd,group,localtime
hostname tar
nosound
caps.drop all
netfilter
nonewprivs
protocol unix,inet,inet6
seccomp
