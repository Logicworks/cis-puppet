class cis::linuxcontrols::c0300 {
  exec { 'unlink': 
    command => '/usr/sbin/prelink -ua',
    onlyif  => 'test -f /usr/sbin/prelink'
  }

  package {
  	'prelink':
  	  ensure => absent;
  }
}
