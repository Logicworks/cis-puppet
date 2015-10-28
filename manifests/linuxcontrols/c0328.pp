class cis::linuxcontrols::c0328 {
  exec { '/bin/sed -i "s|pam_unix.so obscure use_authtok try_first_pass sha512|pam_unix.so obscure use_authtok try_first_pass sha512 remember=5|g" /etc/pam.d/common-password' }
}
