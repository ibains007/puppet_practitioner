class system::hosts{
  resources { 'host':
    purge => true,
  }

  host { 'ibains.puppetlabs.vm':
    ensure         => 'present',
      host_aliases => ['ibains'],
        ip         => '172.16.0.95',
          target   => '/etc/hosts',
  }

  host { 'localhost':
    ensure         => 'present',
      host_aliases => ['localhost.localdomain', 'localhost6', 'localhost6.localdomain6'],
        ip         => '::1',
          target   => '/etc/hosts',
  }

  host { 'master.puppetlabs.vm':
    ensure         => 'present',
      host_aliases => ['master'],
        ip         => '172.16.0.81',
          target   => '/etc/hosts',
  }

  host { 'training.puppetlabs.vm':
    ensure         => 'present',
      host_aliases => ['training', 'localhost', 'localhost.localdomain', 'localhost4'],
        ip         => '127.0.0.1',
          target   => '/etc/hosts',
}
}
