class profile::base(
  Array $ntp_server,
){
  #include ::ssh
  class { '::ntp' :
    servers => $ntp_server,
  }
  
  if $facts['os']['family'] == 'RedHat' {
    include ::profile::selinux
  }
}

