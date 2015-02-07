# == Class: syncthing::params
class syncthing::params {
  $user        = 'syncthing'
  $user_shell  = '/bin/false'
  $data_dir    = '/var/lib/syncthing'
}
