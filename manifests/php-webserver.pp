class php-webserver {
  class { 'mysql::client': }
  class { 'mysql::server': }
  package { nginx: ensure => latest }
  package { php5-fpm: ensure => latest }
  package { php5-mysql: ensure => latest }

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
}
