# Class cis::linuxcontrols::c0305
#
# Ensure rsh client is not present on the system.
#

class cis::linuxcontrols::c0305 {
  package { 'apparmor':
    ensure => present,
  }

  service { 'apparmor':
    ensure => running,
  }

  $apparmor_d = '/etc/apparmor.d'
  file { 'apparmor.d':
    ensure  => directory,
    path    => $apparmor_d,
    owner   => 'root',
    group   => 'root',
    mode    => '0755',
    require => Package['apparmor'],
  }

  file { 'apparmor.d.local':
    ensure  => directory,
    path    => "${apparmor_d}/local",
    owner   => 'root',
    group   => 'root',
    mode    => '0755',
    require => Package['apparmor'],
  }
}
