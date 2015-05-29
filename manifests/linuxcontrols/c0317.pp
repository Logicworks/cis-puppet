class cis::linuxcontrols::c0317 {
  file {'/etc/postfix/main.cf':
    source => 'puppet:///modules/cis/ubuntu/main.cf',
    owner  => root,
    group  => root,
    mode   => '0640',
  }
}
