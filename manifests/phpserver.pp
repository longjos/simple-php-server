
exec {'apt-update' :
        command => '/usr/bin/apt-get update',
    } ->
package {'apache2':
        ensure => present,
    } ->
package {'php5':
        ensure => present,
    }



