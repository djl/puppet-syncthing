# == Class: syncthing::params
class syncthing::params {
  $user       = 'syncthing'
  $user_shell = '/bin/false'
  $data_dir   = '/var/lib/syncthing'
  $pid_file   = '/var/run/syncthing/syncthing.pid'
}
