# Class cis::linuxcontrols::c0325
#
# Restrict access to rsyslog log files.
#

class cis::linuxcontrols::c0325 {
  file {
    '/var/log/auth.log':
      ensure => present,
      owner  => root,
      group  => root,
      mode   => '0600';
    '/var/log/cron.log':
      ensure => present,
      owner  => root,
      group  => root,
      mode   => '0600';
    '/var/log/daemon.log':
      ensure => present,
      owner  => root,
      group  => root,
      mode   => '0600';
    '/var/log/kern.log':
      ensure => present,
      owner  => root,
      group  => root,
      mode   => '0600';
    '/var/log/lpr.log':
      ensure => present,
      owner  => root,
      group  => root,
      mode   => '0600';
    '/var/log/mail.err':
      ensure => present,
      owner  => root,
      group  => root,
      mode   => '0600';
    '/var/log/mail.info':
      ensure => present,
      owner  => root,
      group  => root,
      mode   => '0600';
    '/var/log/mail.log':
      ensure => present,
      owner  => root,
      group  => root,
      mode   => '0600';
    '/var/log/mail.warn':
      ensure => present,
      owner  => root,
      group  => root,
      mode   => '0600';
    '/var/log/syslog':
      ensure => present,
      owner  => root,
      group  => root,
      mode   => '0600';
    '/var/log/user.log':
      ensure => present,
      owner  => root,
      group  => root,
      mode   => '0600';
  }
}
