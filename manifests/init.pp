# == Class: syncthing
#
# Install Syncthing
#
# === Parameters
#
# [*user*]
#   The user Syncthing should run as
#
# [*user_shell*]
#   The Syncthing user's shell
#
# [*data_dir*]
#   The directory where Syncthing data will be stored
#
# === Examples
#
#  class { 'syncthing':
#    user => 'jim',
#  }
#
class syncthing (
  $user       = $syncthing::params::user,
  $user_shell = $syncthing::params::user_shell,
  $data_dir   = $syncthing::params::data_dir,
) inherits syncthing::params {

  class { 'syncthing::install': } ->
  class { 'syncthing::config': } ~>
  class { 'syncthing::service': } ->
  Class['syncthing']
}
