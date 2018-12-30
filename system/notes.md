## Notes

unsorted notes about first Ubuntu configurations

sudo ubuntu-drivers autoinstall
sudo systemctl disable nvidia-fallback.service
sudoedit /etc/default/grub
sudo update-grub

---

Re: Suspend-resume problems on Ubuntu 18.04

It is the buggy nouveau driver again. That's what solved the issue for me.
Edit the file /etc/default/grub.

$ sudoedit /etc/default/grub.

Add "nouveau.modeset=0" to the line that says GRUB_CMDLINE_LINUX then press ^O to save the file and ^X to live then run.

$ sudo update-grub.

Reboot.


---

systemctl set-default multi-user.target

sudo telinit (3|5)

systemctl set-default graphical.target

---

GRUB_CMDLINE_LINUX_DEFAULT="acpi_osi="

---

http://irtfweb.ifa.hawaii.edu/~lockhart/gpg/


gpg --import public.key
gpg --allow-secret-key-import --import private.key
gpg --list-secret-keys --keyid-format LONG
git config --global user.signingkey <long>

---

https://docs.docker.com/install/linux/docker-ce/ubuntu/
https://docs.docker.com/install/linux/linux-postinstall/#manage-docker-as-a-non-root-user

---

