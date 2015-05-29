class cis::linuxcontrols::c0323 {
  package {
    'auditd':
      ensure => installed;
  }
  service {'auditd':
    ensure     => running,
    enable     => true,
    hasrestart => true,
    hasstatus  => true,
  }
}
