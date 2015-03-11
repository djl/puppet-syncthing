# == Class: syncthing::install
class syncthing::install() inherits syncthing::params {
  if ($syncthing::manage_user) {
      user { $syncthing::user:
        ensure => present,
        shell  => $syncthing::user_shell,
        home   => $syncthing::data_dir,
      }
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
