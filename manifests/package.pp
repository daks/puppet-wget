class wget::package {
    package { 'wget':
        ensure  => present,
    }
}
