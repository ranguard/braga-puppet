define baseline::packages::perl (

) {

    # Packages we need to build stuff
    package {
        # for https
        'libssl-dev': ensure => present;
        # for gzip
        'zlib1g-dev': ensure => present;
        # for Test::XPath
        'libxml2-dev': ensure => present;
        # for XML::Parser (used by Test::XPath)
        'libexpat1-dev': ensure => present;
        # AnyEvent::Curl::Multi
        'libcurl4-openssl-dev': ensure => present;
    }

}

