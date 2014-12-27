class php-webserver {
  package { nginx: ensure => latest }
  package { php5-fpm: ensure => latest }
  package { php5-mysql: ensure => latest }
  package { mysql-server: ensure => latest }
  package { mysql-client: ensure => latest }
  group { 'www-data': ensure => present, gid => 33 }
  user { 'www-data': ensure => present, gid => 'www-data', groups => [ 'www-data' ], membership => minimum, shell => '/usr/sbin/nologin', require => Group['www-data'] }
  file { [ '/var/www' ]: ensure => 'directory', owner => 'www-data', group => 'www-data', mode => 755 }
  file { '/etc/nginx/sites-available/default': ensure => 'file', mode => '0644', owner => 'root', group => 'root', source => '/vagrant/files/etc/nginx/sites-available/default' }
  file { '/etc/php5/fpm/php.ini': ensure => 'file', mode => '0644', owner => 'root', group => 'root', source => '/vagrant/files/etc/php5/fpm/php.ini' }
}
