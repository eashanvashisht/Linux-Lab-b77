## Experiment [1]: Install WSL, virtualbox, create virtual machine with linux os like ubuntu, linuxmint, or debian

### Name: Eashan Vashisht Roll no.: 590028572 Date: 2025-09-05

### AIM:
* [To install wsl, create virtual machine with linux distros like ubuntu, debian, etc]

### Requirements:

* A Windows system with administrative privileges.
* Internet connection.
* Installation files for WSL, VirtualBox, and a Linux distribution ISO.

### Theory:

* WSL enables running Linux distributions directly on Windows without a virtual machine. VirtualBox is a virtualization software that allows creating and running multiple operating systems on a single machine. Creating a VM with Linux OS (Ubuntu, Mint, Debian) helps understand OS installation steps and provides a sandbox environment for Linux practice.

## Procedure & Observations

# Part 1: Installing and Enabling WSL (Ubuntu) on Windows

## Step 1: Enable `WSL` and `Virtualuzation Features`

* `**Open Powershell as administrator**`: Press `win+x` and select `"Windows Powershell (Admin)"` or `"Terminal (Admin)"`.

<p align="center">
<img align="center" src="img/abc.png" width="900">
</p>

* Run the WSL Installation Command:
```
wsl -l -o
```
<p align="center">
<img align="center" src="img/wsl-install.png" width="900">
</p>

```
wsl --install Ubuntu
```
* Once the wsl distro is installed it'll show up like this
<p align="center">
<img align="center" src="img/wsl-ubuntu-done.png" width="900">
</p>

* Once done with the installation reboot your system when prompted.

# This single command will do the following:
* Enable the required "Virtual Machine Platform" and "Windows Subsystem for Linux" optional components.
* Downloads and installs the latest Ubuntu Linux distro by default.
* Requests a reboot.

## Step 2: Setup your Ubuntu Distro

* After rebooting, a terminal windows will open for Ubuntu. If it doesn't, open your start menu and launch "Ubuntu".

* Wait for the isntallation to finish. You will be asked to create a `New UNIX username` and **password**. This is separate from your windows login.

## Step 3: Enable Virtualization in BIOS/UEFI

1. Check if it's enabled:
    * Press `ctrl + shift + esc` to open Task Manager.
    * Go to the "Performance" Tab.
    * Look at the bottom right. "Virtualization" should say **Enabled**.
  

2. If it's Disabled:
    * Reboot your computer and enter the BIOS/UEFI setup. The key to boot is usually `Delete`, `F2`, `F10`, `F12`, or `Esc`.
    * Navigate the BIOS menu
    * Find the settings for **Virtualization Technology**.
    * For Intel based system it's called "**Intel Virtualization Technology**" or "**Intel VT-x**".
    * and for AMD based system it's called "**AMD-V**"
    * Enable the option.
    * Save and exit. your computer will reboot.

* After enabling virtualization, windows should automatically enable the "**Hypervisor**". WSL Should work now.

* Verify if WSL is working:
    * Open a new powershell or cmd window and type:
        ```wsl -l -v```

    * This should list your installed wsl distro and it's version.

---

# Part 2: Installing VirtualBox

## Step 1: Download and Install VirtualBox

* Go to the official [VirtualBox download page.](https://www.virtualbox.org/wiki/Downloads)
* Under "VirtualBox platform packages", click "Windows hosts" to download the installer.
* Run the downloaded `.exe` file.
* Follow the installation wizard. You can accept all default settings. It's safe to install all features (network interfaces, etc).
* You will likely get a warning about installing device software. Click "Install" to proceed.

## Step 2: (Optional) Install the Microsoft Visual C++ Redistributable

*   This is sometimes required for VirtualBox to function correctly, especially if you see related errors.
*   Download the latest **Visual Studio 2019 Redistributable** from the [official Microsoft site](https://learn.microsoft.com/en-US/cpp/windows/latest-supported-vc-redist?view=msvc-170).
*   Download and run the **`vc_redist.x64.exe`** file.
*   Follow the prompts to install it. A reboot is recommended afterward.

---

# Part 3: Creating a Virtual Machine with Ubuntu distro

## Step 1: Download Ubuntu iso
* Go to the [Ubuntu Download page](https://ubuntu.com/download/desktop/thank-you?version=24.04.3&architecture=amd64&lts=true).
* Download the lts edition.
* Download the ISO image. This is a disk image that VirtualBox will use as the installation source.

## Step 2: Create a New Virtual Machine in VirtualBox
1. Open **Oracle VM VirtualBox**
2. Click the "New" button (blue star).
3. Name and Operating System:
    * Name: `Ubuntu` (this will autofill other fields).
    * ISO Image: Click the folder icon and browse to select the Linux distro ISO you downloaded.
    * Type: Linux
    * Version: Ubuntu (64-bit).
    * Click **Next**.

4. Hardware Resources:
    * Memory (RAM): Allocate at least 4096 MB (4 GB) if you have 8+ GB of physical RAM. Do not give it all your RAM.
    * Processors: Allocate 2 or more CPUs if your system has multiple cores.
    * Click **Next**.

5. Hard Disk:
    * "Create a virtual hard disk now" should be selected. Click **Create**.
    * Hard disk file type: **VDI (VirtualBox Disk Image)**.
    * Storage on physical hard disk: Dynamically allocated (uses space only as needed).
    * File location and size: The default location is fine. Allocate at least 25 GB for the disk. Click **Create**.

## Step 3: Install Linux distro on the Virtual Machine
1. With your new "Linux distro" VM selected in the VirtualBox Manager, click the "Start" (green arrow) button.
2. The VM will boot from the ISO into the Linux distro live environment.
3.  **Double-click "Install Linux"** on the desktop.
4.  Follow the installation wizard:
    *   Select your language and keyboard layout.
    *   Connect to a WiFi network if desired.
    *   **Installation type:** You can choose the default **"Erase disk and install Linux"**. *This only erases the virtual hard disk you created, not your actual physical drive.*
    *   Select your time zone.
    *   Create your user account (name, computer name, username, password).
5.  The installation will run. Once finished, you will be prompted to **restart the computer**.
6.  When it asks you to "Please remove the installation medium", you can press `Enter`. VirtualBox will automatically eject the ISO on shutdown.
7.  The VM will reboot into your freshly installed Linux OS.

