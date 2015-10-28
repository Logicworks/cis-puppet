class cis::linuxcontrols::c0330 {
  exec { '/bin/sed -i "s|X11Forwarding yes|X11Forwarding no|g" /etc/ssh/sshd_config' }
}
