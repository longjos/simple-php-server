
exec {'apt-update' :
        command => '/usr/bin/apt-get update',
    } ->
package {'apache2':
        ensure => present,
    } ->
package {'php5':
        ensure => present,
    } ->
package {'mysql-server':
        ensure => present,
    } ->
package {'mysql-client':
        ensure => present,
    }

service {'apache2':
        ensure => running,
    }
service {'mysql':
        ensure => running,
    }





