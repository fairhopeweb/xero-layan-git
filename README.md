### This is XeroLinux's Layan Rice

Some notes before proceeding :

> Applying this rice will override all your settings. So make sure to create a backup of your system either via Snapper if using it, or TimeShift. Don't worry though, script will attempt to create a backup for you of your ~/.config folder before proceeding. Still better be safe than sorry.

![XeroLayan](https://i.imgur.com/aVgMxed.jpg)

# Requirement for Arch KDE Distros ...

First off, note that if you want to use on other Arch based distros with KDE than **XeroLinux** you will need to add my repo since most of the packages are only available there. (This does not apply to Debian or Fedora).

Open the file `/etc/pacman.conf` and add my repo below anywhere :
```
[xerolinux_repo]
SigLevel = Optional TrustAll
Server = https://xerolinux.github.io/$repo/$arch
```
Save the file, and refresh databases via `sudo pacman -Sy` then follow below step...

# Installation

Just clone this repository, run terminal inside directory and run installer Script corresponding to you Distro base (Arch/Debian/Fedora).

- For Arch run `./installArch.sh`
- For Fedora run `./installFedora.sh`
- For Debian run `./installDebian.sh`

## Compatibility Issues :

**Debian :** This script was based **KDENeon** so your experience may vary on other *Debian* based distros when it comes to package availability, meaning on some **LTS** releases packages may be older than the required versions so some of the configs might look out of place.  It's highly recommended to be on newer distros based on 21.10 for better experience... I will update the script accordingly once a solution is found. **USE AT YOUR OWN RISK**

**KDENeon :** On this distro **Grub** theme will *NOT* be applied, since it's set to silent. It's up to you to find a way to make it visible. I will post guide when I find it.. Sorry bout that...

## Script will do the following steps :

- Create a cbackup of your ~/.config folder.
- Download and install necessary packages if needed...
- Override your settings and files with this rice's.
- Install and apply CyberRe Grub Theme...
- Reboot system to get everything loaded... 

> Use this at your own Risk ! It was requested, so am satisfying this request, but I won't be held liable if you didn't follow above recommendations.... Always Backup.. If you don't and break your system it's on you !!!!
