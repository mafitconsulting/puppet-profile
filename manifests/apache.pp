class profile::apache(
  Boolean $default_vhost = false,
  Hash $apache_vhost_servers,
  Hash $create_index_file,
  #Integer $port          = 80,
  #String $docroot        = '/var/www/test',
) {
  class { '::apache':
    default_vhost => $default_vhost,
  }

  create_resources(::apache::vhost, $apache_vhost_servers)
  #::apache::vhost { 'fieldhouse2.mylabserver.com':
  #  port    => $port,
  #  docroot => $docroot,
  #  before  => File["${docroot}/index.html"],
  #}

  create_resources(::webdev::index_page, $create_index_file)

}
