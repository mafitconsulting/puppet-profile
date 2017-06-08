class profile::webpage(
  Hash $create_index_file,
) {
  class { '::webdev':}

  create_resources(::webdev::index_page, $create_index_file)
}

