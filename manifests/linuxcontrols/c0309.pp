class cis::linuxcontrols::c0309 {
  exec { 'commentdaytime':
    command => '/bin/sed -i \'s/^\\(daytime.*\\)/#\\1/g\' /etc/inetd.conf',
    onlyif  => '/bin/grep ^daytime /etc/inetd.conf'
  }
}
