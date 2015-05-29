# Class cis::linuxcontrols::c0304
#
# Ensure rsh client is not present on the system.
#

class cis::linuxcontrols::c0304 {
  service { 'autofs':
    ensure  => stopped,
    enabled => false
  }
}
