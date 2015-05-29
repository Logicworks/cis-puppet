# Class cis::linuxcontrols::c0307
#
# Ensure rsh client is not present on the system.
#

class cis::linuxcontrols::c0307 {
  service { 'xinetd':
    ensure => stopped,
    enable => false
  }
}
