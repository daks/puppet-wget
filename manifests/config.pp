class wget::config inherits wget {
    $https_proxy = $wget::https_proxy
    $http_proxy = $wget::http_proxy
    file { $wget::params::config_file:
        ensure  => present,
        content => template("${module_name}/wgetrc.erb")
#        require => Class['wget::package']
    }
}
