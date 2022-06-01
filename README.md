# linux-on-asus-laptops
Tips of Linux on Asus laptops.

I am running `Debian testing` on Asus laptop `G513QM` and
I found some annoying problems when running Linux on my laptop.

I hope this can help some people running Linux on their machine.

### Debian testing on G513QM
| Problem description | Workarounds | Solutions |
| ---- | ---- | ---- |
| RGB Keyboards | | Userland program [asus-linux/asusctl](https://gitlab.com/asus-linux/asusctl) |
| Cannot recover from suspend, `s2idle` not working | Run my [script](enable-acpi-s3.sh) to enable S3 sleep instead  |  |
| Power button failed at kernel `5.17` |  |  |
