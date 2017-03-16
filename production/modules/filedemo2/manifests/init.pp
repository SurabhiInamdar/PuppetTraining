class filedemo2{

file {'/root/motd':
       ensure  => present,
       content => 'This is a test',
       owner   => root,
       group   => root,
       mode    => '0064'
     }

file {'/etc/motd':
        ensure => link,
        target => '/root/motd',

     }

}
