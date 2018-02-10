Virtualised desktops with passthrough proposal
======================================

I've got a nice powerful desktop and want to get more use out of it

Requirements:
* Run Linux as a desktop
* Run Windows for Gaming
* Run other lab infrastructure VMs

Dual boot works, but while in Windows my VMs won't run; I'm also stuck using a fedora-based distro for good KVM support

Proposal:
* Network boot my desktop to a thin-client running KVM
* use VFIO to run and switch between Linux and Windows
* Lets me experiment with other distros without compromising KVM
* Also have the option to directly boot to Windows as running as a VM does have a performance impact

Ideal cold-boot sequence of events
---------------

Press power button
EFI provides 3 options:
* PXE
* Windows
* Linux

Windows / Linux just boots direct from disk as normal

PXE boots to KVM thin-client
* VMs running elsewhere move over
* I login on the text console and run a script to choose which desktop
* Script assigns hardware to VM and launches it
* Power button on hardware moves VMs away, then sleeps

Scripts in both desktop to flip between
From windows -> Linux
* Likely shutdown / sleep
* Move hardware assignments
* Launch Linux VM

From Linux -> Windows
* Switch to text-mode
* Disconnect hardware, assign to Windows and launch

---------------
