class profile::webusers(
  Hash $create_users
) {
  include webdev::create_users

  create_resources(::webdev::create_users, $create_users)
}

