class profile::webusers(
  Hash $create_users
) {
  class { '::webdev':}

  create_resources(::webdev::create_users, $create_users)
}

