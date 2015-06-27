# == Class: syncthing::params
class syncthing::params {
  $user        = 'syncthing'
  $user_shell  = '/bin/false'
  $manage_user = true
  $data_dir    = '/var/lib/syncthing'
}
