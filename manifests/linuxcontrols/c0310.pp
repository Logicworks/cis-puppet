class cis::linuxcontrols::c0310 {
  exec { 'commentecho':
    command => '/bin/sed -i \'s/^\\(echo.*\\)/#\\1/g\' /etc/inetd.conf',
    onlyif  => '/bin/grep ^echo /etc/inetd.conf'
  }
}
