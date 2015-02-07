# == Class: syncthing::install
class syncthing::install() inherits syncthing::params {
  user { $syncthing::user:
    ensure => present,
    shell  => $syncthing::user_shell,
  }

  package { 'syncthing':
    ensure => present,
  }

  file { $syncthing::data_dir:
    ensure  => directory,
    mode    => '0755',
    owner   => $syncthing::user,
    group   => $syncthing::user,
    require => User[$syncthing::user]
  }
}
