#Set up the paths
Exet {path => '/usr/bin:/usr/sbin:/bin:/sbin'}
exec {'apt-get-update':
  command => '/usr/bin/apt-get update'
}
# Update before installing
Exec['apt-get-update'] -> Package <| |>

package{['vim', 'git', 'make', 'haskell-platform']:
  ensure => present,
}

