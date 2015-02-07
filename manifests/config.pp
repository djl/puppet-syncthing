# == Class: syncthing::config
class syncthing::config {
  case $::osfamily {
    'Debian': { $config_file = '/etc/default/syncthing' }
    'RedHat': { $config_file = '/etc/sysconfig/syncthing' }
    default: { fail("Unsupported OS: ${::osfamily}") }
  }

  file { $config_file:
    ensure  => present,
    content => template('syncthing/config.erb'),
    mode    => '0644',
  }
}
