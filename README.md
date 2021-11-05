### This is XeroLinux's Layan Rice

Some notes before proceeding :

> Applying this rice will override all your settings. So make sure to create a backup of your system either via Snapper if using it, or TimeShift. Don't worry though, script will attempt to create a backup for you of your ~/.config folder before proceeding. Still better be safe than sorry.

![XeroLayan](https://i.imgur.com/aVgMxed.jpg)

# What you need ...

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

**Note :** On **KDENeon** Grub theme will be applied, but since it's set to silent you will have to find a way to make it visible. I will post guide when I find it.. Sorry bout that... Also **Debian** script was based on **KDENeon** so your experience may vary on other *Debian* based distros for package availability.

### Script will do the following steps :

- Create a cbackup of your ~/.config folder.
- Download and install necessary packages if needed...
- Override your settings and files with this rice's.
- Install and apply CyberRe Grub Theme...
- Reboot system to get everything loaded... 

> Use this at your own Risk ! It was requested, so am satisfying this request, but I won't be held liable if you didn't follow above recommendations.... Always Backup.. If you don't and break your system it's on you !!!!
