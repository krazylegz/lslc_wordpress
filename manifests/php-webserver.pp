class php-webserver {
  exec { 'apt-update':
    command => '/usr/bin/apt-get update'
  }
  Exec['apt-update'] -> Package <| |>

  class { 'mysql::client': }
  class { 'mysql::server': }
  package { nginx: ensure => present }
  package { php5-fpm: ensure => present }
  package { php5-mysql: ensure => present }
  package { varnish: ensure => present }

  file { '/etc/nginx/sites-available/default':
    ensure => 'file',
    mode => '0644',
    owner => 'root',
    group => 'root',
    source => '/vagrant/files/etc/nginx/sites-available/default',
    require => Package['nginx'],
    notify => Service['nginx']
  }
  file { '/etc/php5/fpm/php.ini':
    ensure => 'file',
    mode => '0644',
    owner => 'root',
    group => 'root',
    source => '/vagrant/files/etc/php5/fpm/php.ini',
    require => Package['php5-fpm'],
    notify => Service['php5-fpm']
  }

  file { '/etc/default/varnish':
    ensure => 'file',
    mode => '0644',
    owner => 'root',
    group => 'root',
    source => '/vagrant/files/etc/default/varnish',
    require => Package['varnish'],
    notify => Service['varnish']
  }

  file { '/etc/varnish/default.vcl':
    ensure => 'file',
    mode => '0644',
    owner => 'root',
    group => 'root',
    source => '/vagrant/files/etc/varnish/default.vcl',
    require => Package['varnish'],
    notify => Service['varnish']
  }

  group { 'www-data':
    ensure => present,
    gid => 33
  }
  user { 'www-data':
    ensure => present,
    gid => 'www-data',
    groups => [ 'www-data' ],
    membership => minimum,
    shell => '/usr/sbin/nologin',
    require => Group['www-data']
  }

  service { 'nginx':
    ensure => 'running',
    enable => 'true',
    require => Package['nginx']
  }
  service { 'php5-fpm':
    ensure => 'running',
    enable => 'true',
    require => Package['php5-fpm']
  }
  service { 'varnish':
    ensure => 'running',
    enable => 'true',
    require => Package['varnish']
  }
}
