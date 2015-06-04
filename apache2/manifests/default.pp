# very basic installation of the apache2 webserver
user { $user:
  ensure     => 'present',
  password => generate('/bin/sh', '-c', "mkpasswd -m sha-512 ${password} | tr -d '\n'"),
  managehome => true,
}

package { "apache2":
    ensure => "latest"
} 
