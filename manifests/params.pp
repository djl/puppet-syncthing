# == Class: syncthing::params
class syncthing::params {
  $user        = 'syncthing'
  $user_shell  = '/bin/false'
  $manage_user = true
  $data_dir    = '/var/lib/syncthing'
  $pid_file    = '/var/run/syncthing/syncthing.pid'
  $nice_level  = 0
  $daemon_args = ''
}
