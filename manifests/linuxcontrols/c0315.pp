class cis::linuxcontrols::c0315 {
  service {
    'isc-dhcp-server':
      ensure => stopped,
      enable => false;
    'isc-dhcp-server6':
      ensure => stopped,
      enable => false;
  }
}
