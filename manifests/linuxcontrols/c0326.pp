class cis::linuxcontrols::c0326 {
  package {
    'cron':
      ensure => installed;
  }
  service {'cron':
    ensure     => running,
    enable     => true,
    hasrestart => true,
    hasstatus  => true,
  }
}
