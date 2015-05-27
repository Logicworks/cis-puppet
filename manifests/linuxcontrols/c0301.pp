# Class cis::linuxcontrols::c0020
#
# Ensure NIS client is not present on the system.
#

class cis::linuxcontrols::c0301 {
  package {'nis':
    ensure => absent,
  }
}