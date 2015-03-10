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
# [*manage_user*]
#   Whether Puppet should manage this user
#
# [*data_dir*]
#   The directory where Syncthing data will be stored
#
# [*pid_file*]
#   The pidfile for the Syncthing process
#
# [*nice_level*]
#   The nice priority for the Syncthing process
#
# [*daemon_args*]
#   Any extra arguments to be passed to the Syncthing daemon
#
# === Examples
#
#  class { 'syncthing':
#    user => 'jim',
#  }
#
class syncthing (
  $user        = $syncthing::params::user,
  $user_shell  = $syncthing::params::user_shell,
  $manage_user = $syncthing::params::manage_user,
  $data_dir    = $syncthing::params::data_dir,
  $pid_file    = $syncthing::params::pid_file,
  $nice_level  = $syncthing::params::nice_level,
  $daemon_args = $syncthing::params::daemon_args,
) inherits syncthing::params {

  validate_bool($manage_user)

  class { 'syncthing::install': } ->
  class { 'syncthing::config': } ~>
  class { 'syncthing::service': } ->
  Class['syncthing']
}
