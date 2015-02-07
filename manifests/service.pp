# == Class: syncthing::service
class syncthing::service {
  service { 'syncthing':
    ensure     => running,
    enable     => true,
    hasstatus  => true,
    hasrestart => true,
  }
}
