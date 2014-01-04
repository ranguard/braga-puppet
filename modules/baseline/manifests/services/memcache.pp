class baseline::services::memcache {
    package { ["memcached",]:
      ensure => latest,
    }->
	service { memcached:
		ensure => running,
	}
}
