class baseline::configs {
    # Aliases
    file { "/etc/aliases":
            source => "puppet:///modules/baseline/default/etc/aliases",
            owner => 'root',
            group => 'root'
    }
    package { apticron: ensure => present }->
    file { "/etc/apticron/apticron.conf":
            source => "puppet:///modules/baseline/default/etc/apticron/apticron.conf",
            owner => 'root',
            group => 'root'
    }

    # # make logrotate use dateext for all logs
    # # speeds up backups because file names don't change
    # include logrotate::base
    # file { "/etc/logrotate.d/dateext":
    #         content => "dateext",
    #         require => Package["logrotate"],
    # }->
    # file { "/etc/logrotate.d/compress":
    #     content => "compresscmd /bin/bzip2\nuncompresscmd /bin/bunzip2",
    #     require => Package["bzip2"],
    # }
}

