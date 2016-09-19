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
1. git clone https://github.com/SpotComms/FirejailProfileGenerator.git
2. cd FirejailProfileGenerator/generated
3. mkdir -p ~/.config/firejail
4. cp *.profile ~/.config/firejail
5. sudo cp disable-programs.inc /etc/firejail/disable-programs.inc
6. sudo chmod 644 /etc/firejail/disable-programs.inc
7. Launch and test!
