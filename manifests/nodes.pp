import 'php-webserver'

node default {
  include php-webserver
}

node 'library1.domain.tld' inherits wordpress {
}
