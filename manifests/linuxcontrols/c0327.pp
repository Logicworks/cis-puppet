class cis::linuxcontrols::c0327 {
  package {
    'libpam-cracklib':
      ensure => installed;
  }
  exec { '/bin/sed -i "s|pam_cracklib.so retry=3 minlen=8 difok=3|pam_cracklib.so retry=3 minlen=14 dcredit=-1 ucredit=-1 ocredit=-1 lcredit=-1|g" /etc/pam.d/common-password' }


}
