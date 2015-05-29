class cis::linuxcontrols::c0312 {
  exec { 'commenttime':
    command => '/bin/sed -i \'s/^\\(time.*\\)/#\\1/g\' /etc/inetd.conf',
    onlyif  => '/bin/grep ^time /etc/inetd.conf'
  }
}
