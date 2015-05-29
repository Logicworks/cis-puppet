class cis::linuxcontrols::c0308 {
  exec { 'commentchargen':
    command => '/bin/sed -i \'s/^\\(chargen.*\\)/#\\1/g\' /etc/inetd.conf',
    onlyif  => '/bin/grep ^chargen /etc/inetd.conf'
  }
}
