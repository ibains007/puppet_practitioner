class ordering::mysql {
  anchor { 'ordering::mysql::begin': }
  ->
  class { 'mysql::server':
    root_password => 'strongpassword',
  }
  -> anchor {'ordering::mysql::end': }

  class { 'mysql::bindings':
    php_enable  => true,
    perl_enable => true,
  }

  contain mysql::bindings

}
