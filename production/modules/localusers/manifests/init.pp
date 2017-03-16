class localusers
{
user {'testuser':


  ensure => present,
#  uid => '102',
  gid => 'finance',
  shell => '/bin/bash',
  home => '/home/testuser',
  managehome => true,
  password => '$6$R1MXSBcM$2Up10WQLVZN2PsbDntXA8vOaNq7SUP5/VIFMf9t1XL823qbNWXUU0c/KKOzAl1yfW32fCxsKQzV84iXq23qac/',

}

group {'finance':
  ensure => present,
    }

}
