## Definition :
Boot process is the sequence of steps a computer follows start up and load the operating system.

**BIOS :**</br>
- Basic input output system.
- First program that execute which is store in the motherboard of the computer.
- Perform POST check. Verify the hardware components .
- Then check for the bootable device such as PAN drive, Hard Disk etc.
- Once the bootable device is detected it handover to the first sector of bootable device.

**MBR :**</br>
- Master boot record 
- Any first sector of bootable device contain machine code instruction to boot the machine. Having information like
- Boot Loader (446 bytes)
- Partition Table (64 bytes)
- Error checking (2 bytes)
  It load bootloader into the memory and passes control to it.

**GRUB :**
- Grand Unified Bootloader.
- At this stage, user can see GUI asking for different OS or Kernel to configured.
- Main job is to load the kernel and initramfs images into the memory.
- Once the kernel loaded into the memory it handover control to it.

**KERNAL :**</br>
- Kernal loaded itself into the readonly mode.
- initrd/initramfs decompressed and load temporary filesystem.
- Then initramfs detect and load the drivers from temporary filesystem to actual filesystem.
- mount other filesystem like LVM, RAID and unmount itself.
- Then KERNAL initialize the first process systemd.

**SystemD :**
- First service loaded with the PID-1.
- Starts all required process /ect/systemd/default.target
- To bring the system to the Run Level.
