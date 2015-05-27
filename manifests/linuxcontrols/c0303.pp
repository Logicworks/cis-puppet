# Class cis::linuxcontrols::c0019
#
# Ensure rsh client is not present on the system.
#

class cis::linuxcontrols::c0303 {
  package {
  	'rsh-client':
      ensure => absent;      
  	'rsh-redone-client':
      ensure => absent;            
  }
}
