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

Profile Credits
-------
- Most profiles by [netblue30](https://github.com/netblue30/)/[Firejail contributors](https://github.com/netblue30/firejail/graphs/contributors) from https://github.com/netblue30/firejail/tree/master/etc
- Skype, LinPhone, mpd, OpenShot, Scribus, VirtualBox by chiraag-nataraj from https://github.com/chiraag-nataraj/firejail-profiles
- TeamSpeak profile by melvinvermeeren from https://aur.archlinux.org/packages/firejail-profiles
- Arduino, Bless, eog, Gnome 2048, Gnome Calculator, Gnome Calendar, Gnome Characters, Gnome Clocks, Gnome Contacts, Gnome Maps, Gnome Music, Gnome Weather, JD-GUI, MultiMC5, Mumble, PDFSam, Pithos, Redshift, Xonotic by SpotComms

Testing
-------
- These new profiles will need testing to prevent any potential regressions, below are steps to do so
- git clone https://github.com/SpotComms/FirejailProfileGenerator.git
- cd FirejailProfileGenerator/generated
- sudo cp disable-programs.inc /etc/firejail/disable-programs.inc
- sudo rm /etc/firejail/*.profile
- sudo cp *.profile /etc/firejail/
- sudo chmod 644 /etc/firejail/disable-programs.inc
- sudo chmod 644 /etc/firejail/*.profile
- Launch and test!
- Report [here](https://github.com/SpotComms/FirejailProfileGenerator/issues/1)
