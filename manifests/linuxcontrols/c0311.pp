class cis::linuxcontrols::c0311 {
  exec { 'commentdiscard':
    command => '/bin/sed -i \'s/^\\(discard.*\\)/#\\1/g\' /etc/inetd.conf',
    onlyif  => '/bin/grep ^discard /etc/inetd.conf'
  }
}
