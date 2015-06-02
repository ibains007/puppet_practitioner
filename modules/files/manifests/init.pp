class files{
 file {['/etc/cron.allow','/etc/cron.deny']:
   ensure => file,
 }

 file_line {'allow':
   ensure => present,
   path   => '/etc/cron.allow',
   line   => 'root',
 }

 file_line {'deny':
   ensure => present,
   path   =>'/etc/cron.deny',
   line   => '*',
 }

  concat {'/etc/motd':
    owner => 'root',
    mode  => '0644',
  }

  concat::fragment{'motd header':
    target => '/etc/motd',
    source => 'puppet:///modules/files/header.txt',
    order  => '01',
  }

  concat::fragment{'today':
    target  => '/etc/motd',
    content => 'howdy',
    order   => '10',
  }
}

