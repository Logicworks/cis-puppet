class cis::linuxcontrols::c0321 {
  package {
    'ufw':
      ensure => installed;
  }
  service {'ufw':
    ensure     => running,
    enable     => true,
    hasrestart => true,
    hasstatus  => true,
  }
}
