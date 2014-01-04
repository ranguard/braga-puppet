class baseline::services::memcached {
    package { ["memcached",]:
      ensure => latest,
    }->
	service { memcached:
		ensure => running,
	}
}
