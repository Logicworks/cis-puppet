class cis::linuxcontrols::c0329 {
  file { '/etc/ssh/sshd_config':
    ensure => present,
    mode   => '0600'
  }
}
