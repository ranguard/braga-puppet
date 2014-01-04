node default {
    include sheep

    include sheep::packages
    include sheep::configs

    # include perlbrew here to make sheep::perl work
    include perlbrew
    $perlbin = "/usr/local/perlbrew/perls/perl-5.16.2/bin"
    $perl = "perl-5.16.2"

#    include sheep::ssh

#    sheep::perl {  $perl: }

    # include sheep::exim
#    include sheep::user::admins

#    include sheep::web::laurielapworth
#    include sheep::web::imageeasel

     notify{"In default 2": }
}
