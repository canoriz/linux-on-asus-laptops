# Enable S3 sleep

1. Switch off secure boot in BIOS
2. Install required tools
3. Run the script
4. Add
```
# A temporary workaround for s2idle drains battery
# and amdgpu not working properly after wake up
# waiting for amdgpu fix s2idle problem in upstream kernel
# note: enabling this requires secure boot off
GRUB_EARLY_INITRD_LINUX_CUSTOM="acpi_override"
GRUB_CMDLINE_LINUX_DEFAULT="quiet mem_sleep_default=deep"
```
to your `/etc/default/grub`

5. Run `update-grub` on Debian/Ubuntu, something like `grub-mkconfig -o /boot/grub/grub.cfg` on other distributions.
6. Reboot

# Note
Remember to rerun the script after BIOS update every time