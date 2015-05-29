class cis::linuxcontrols::c0318 {
  exec { 'disablersync':
    command =>  '/bin/sed -i \'s/RSYNC_ENABLE=true/RSYNC_ENABLE=false/g\' /etc/default/rsync',
    onlyif  => '/bin/grep "RSYNC_ENABLE=true" /etc/default/rsync'
  }
}
