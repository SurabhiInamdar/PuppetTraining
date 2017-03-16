
node prashant03.mylabs.com {


file {'abc.txt'
path => '/tmp',
ensure => 'present',
content => 'hi surabhi',

}

}
