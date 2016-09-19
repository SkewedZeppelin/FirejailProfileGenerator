Firejail Profile Generator
==========

Goals
------
- Increase restrictions
- Reduce work needed by hand
- Streamline profiles
- Support more programs

End Goal
--------
- For the firejail project to perform what this program does internally

Credits
-------
- Most profiles by [netblue30](https://github.com/netblue30/)/[Firejail contributors](https://github.com/netblue30/firejail/graphs/contributors) from https://github.com/netblue30/firejail/tree/master/etc
- TeamSpeak profile by melvinvermeeren from https://aur.archlinux.org/packages/firejail-profiles
- Mumble, MultiMC5, eog by SpotComms

Testing
-------
- These new profiles will need testing to prevent any potential regressions, below are steps to do so
- git clone https://github.com/SpotComms/FirejailProfileGenerator.git
- cd FirejailProfileGenerator/generated
- sudo cp disable-programs.inc /etc/firejail/disable-programs.inc
- sudo rm /etc/firejail/*.profiles
- sudo cp *.profiles /etc/firejail/
- sudo chmod 644 /etc/firejail/disable-programs.inc /etc/firejail/*.profiles
- Launch and test!
