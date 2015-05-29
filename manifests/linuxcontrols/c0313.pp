class cis::linuxcontrols::c0313 {
  exec { 'removexorg': 
    command => '/usr/bin/apt-get purge xserver-xorg-core*',
    onlyif  => '/usr/bin/dpkg -l xserver-xorg-core*'
  }
}
