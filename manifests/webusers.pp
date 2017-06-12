class profile::webusers(
  Hash $create_users
) {
  include { '::webdev':}

  $defaults = {
    ensure   => present,
    managehome => true,
    shell      => '/bin/bash',
  }
  create_resources(::webdev::create_users, $create_users, $defaults)
}

