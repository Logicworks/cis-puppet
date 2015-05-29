class cis::linuxcontrols::c0314 {
  exec { 'commentavahi':
    command => '/bin/sed -i \'s/^\\(start.*\\)/#\\1/g\' /etc/init/avahi-daemon.conf',
    onlyif  => '/bin/grep ^start /etc/init/avahi-daemon.conf'
  }
}
