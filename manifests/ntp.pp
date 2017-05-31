class profile::ntp(
  Array $ntp_servers,
) {
  class { '::ntp':
    servers => $ntp_servers,
  }
}

