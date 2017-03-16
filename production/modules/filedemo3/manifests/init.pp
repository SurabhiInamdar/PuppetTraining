class filedemo3 {
    
file {'/root/motd':
      ensure => present,
      source => 'puppet:///modules/filedemo3/sample',
      owner  => root,
      group  => root,
      mode   => '0644',
}

file {'/etc/motd':
     ensure => link,
     target => '/root/motd',
}

}
