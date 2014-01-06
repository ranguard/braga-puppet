class baseline(
	$testinfo = hiera('baseline::testinfo','Test default')
) {
	include baseline::packages
	include baseline::services
	include baseline::configs
	include baseline::exim

 notify{"In default 2 $testinfo": }

#	include baseline::user
#	include baseline::user::admins

}

