import 'php-webserver'

node default {
  include php-webserver
  
  file { '/var/www/': ensure => 'directory', owner => 'www-data', group => 'www-data', mode => 755, source => '/vagrant/files/wordpress', recurse => true }
  file { '/tmp/lslc_wordpress.sql': ensure => 'file', mode => '0644', owner => 'root', group => 'root', source => '/vagrant/files/lslc_wordpress.sql' }

  mysql::db { 'lslc_wordpress':
    user => 'lslc',
    password => 'hf2cud725Hfp',
    grant => [ 'ALL' ],
    sql => '/tmp/lslc_wordpress.sql',
    require => File['/tmp/lslc_wordpress.sql']
  }
}
