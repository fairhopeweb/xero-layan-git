### This is XeroLinux's Layan Rice

-> Some notes before proceeding :

> Applying this rice will override all your settings. So make sure to create a backup of your system either via Snapper if using it, or TimeShift. Don't worry though, script will attempt to create a backup for you of your ~/.config folder before proceeding. Still better be safe than sorry.

-> Performance issues :

> This rice as with all rices is not recommended to be used on lower-end hardware. iGPUs and less than 4GB RAM will result in sluggish and sometimes laggy behaviour. It's all due to Latte-Dock it's a memory hog, especially when using it way I do in my rices (sometimes 3 latte panels one dock). You've been warned. If you still insist on installing on lower-end systems, don't come to me asking for help..


![XeroLayan](https://i.imgur.com/aVgMxed.jpg)

# Requirement for *Other* Arch KDE Distros ...

First off, note that if you want to use on other Arch based distros with KDE than **XeroLinux** you will need to add my repo since most of the packages are only available there. (This does not apply to Debian or Fedora).

Open the file `/etc/pacman.conf` and add my repo at the bottom of the file :
```
[xerolinux_repo]
SigLevel = Optional TrustAll
Server = https://xerolinux.github.io/$repo/$arch
```
Save the file, and refresh databases via `sudo pacman -Sy` then follow below step...

# Installation

Just clone this repository, run terminal inside directory and run installer Script corresponding to your Arch-based w/KDE/Debian-based w/KDE/Fedora Distro.

- For Arch run `./installArch.sh`
- For Fedora run `./installFedora.sh`
- For Debian run `./installNeon.sh`

## Compatibility Issues :

**Debian Packages :**

> This script was based on **KDENeon** which uses the *Impish* updated repositories, so your experience may vary on older or *LTS* distros when it comes to package availability, meaning on some *Older* releases using the *Stable/LTS* repos, packages may be older than the required versions so some of the configs might look out of place. It's highly recommended to be on newer distros based on 21.10 or higher for better experience...

**Vanilla KDE is Preferred :**

> On *Customized* distros *some* rice elements may *NOT* be applied. It could be due to proprietary configurations and different tools used. That's why it's not recommended to use this rice with them. I mean a rice on top of an already applied one, recipe for disaster. For example some distros opt to use **LightDM** as opposed to **SDDM** which is used in my rice, so that part won't get themed. For that reason it's not recommended to use this rice with *Pre-Customized Distros*.If you really want to use it, **USE ONLY WITH VANILLA KDE**, otherwise I cannot provide any support, contact your Distro's Dev for help.

## Script will do the following steps :

- Create a backup of your ~/.config folder.
- Download and install necessary packages if needed...
- Override your settings and files with this rice's.
- Install and apply CyberRe Grub Theme...
- Reboot system to get everything loaded... 

> That's the *Only* rice I will make cross-distro compatible. I will not make anymore. I already have my own to worry about. I just make this as proof of concept. Luckily it worked just fine. Don't expect another. I really hope you enjoy it while it lasts.

> Use this at your own Risk ! I won't be held liable if you didn't follow above recommendations.... Always Backup.. If you don't and break your system it's on you !!!!
