# Class cis::linuxcontrols::c0306
#
# Ensure rsh client is not present on the system.
#

class cis::linuxcontrols::c0306 {
  package { 'talk':
    ensure  => absent
  }
}
