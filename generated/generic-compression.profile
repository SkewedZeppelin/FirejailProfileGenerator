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
caps.drop all
hostname tar
net none
netfilter
no3d
nonewprivs
nosound
private-bin sh,tar,gtar,compress,gzip,lzma,xz,bzip2,lbzip2,lzip,lzop,unrar,unzip,xzdec,7z
private-dev
private-etc passwd,group,localtime
protocol unix,inet,inet6
quiet
seccomp
shell none
tracelog
