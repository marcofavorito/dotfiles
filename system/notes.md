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

- take e.g. the `3AA...` from ``sec   4096R/3AA5C34371567BD2 2016-03-10 [expires: 2017-03-10]`

    git config --global user.signingkey <long>

to print the public key in ASCII format

    gpg --armor --export 3AA5C34371567BD2

references:
- https://help.github.com/en/articles/telling-git-about-your-signing-key
- https://help.github.com/en/articles/generating-a-new-gpg-key

---

https://docs.docker.com/install/linux/docker-ce/ubuntu/
https://docs.docker.com/install/linux/linux-postinstall/#manage-docker-as-a-non-root-user

---

Configure ssh

- copy pb/pv key in .ssh
- do `eval "$(ssh-agent -s)"
- `ssh-add ~/.ssh/id_rsa`
- change permission if needed: `chmod 400 ~/.ssh/id_rsa`

---
