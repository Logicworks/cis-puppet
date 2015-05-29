class cis::linuxcontrols::c0316 {
  package {
    'ntp':
      ensure => installed;
  }

  exec { 'restrictntp':
    command => '/bin/echo "restrict -4 default kod nomodify notrap nopeer noquery\nrestrict -6 default kod nomodify notrap nopeer noquery\n" >> /etc/ntp.conf'
    unless  => '/bin/grep "restrict .* default" /etc/ntp.conf'
  }
  exec { 'ntpservers':
    command => '/bin/echo "server ntp.ubuntu.com\nserver 0.us.pool.ntp.org\nserver 1.us.pool.ntp.org" >> /etc/ntp.conf'
    unless  => '/bin/grep "^server" /etc/ntp.conf'
  }

}
