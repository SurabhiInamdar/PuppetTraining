class sshservice {




case $osfamily {
  
    'RedHat': {
       $ssh_name = 'sshd'
               }

    'Debian': {
       $ssh_name = 'ssh'
               }

     'default': {
       Warning('OS FAMILY DOES NOT MATCH')
               }
         }


service {'my-ssh-service':

     name   => $ssh_name,
     ensure => running,
     enable => true,
        }
}
