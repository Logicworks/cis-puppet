# Class cis::linuxcontrols::c0052
#
# Configure auditd to keep all log entries.
#

class cis::linuxcontrols::c0324 {
  file {'/etc/audit/auditd.conf':
    source => 'puppet:///modules/cis/ubuntu/auditd.conf',
    owner  => root,
    group  => root,
    mode   => '0640',
    notify => Service['auditd'],
    }
}
