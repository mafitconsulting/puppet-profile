class profile::selinux (
  String $mode  = 'permissive',
) {
  class { '::selinux':
    mode => $mode,
  }
}
  
