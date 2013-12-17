class wget::params {
    case $::osfamily {
        'Debian': {
            $package_name = 'wget'
            $config_file = '/etc/wgetrc'
        }
        default: {
            fail("The ${module_name} module is not supported on ${::osfamily} distribution.")
        }
    }
}
