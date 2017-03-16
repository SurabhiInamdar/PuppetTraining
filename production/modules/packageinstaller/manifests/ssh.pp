class packageinstaller::ssh {

package {'ssh-installer':

  name   => openssh-server,
  ensure => present,

        }

service {'ssh':
   ensure  => running,
   enable  => true,
        }
}
