node default {
    include baseline

    # include perlbrew here to make sheep::perl work
    include perlbrew
    $perlbin = "/usr/local/perlbrew/perls/perl-5.16.2/bin"
    $perl = "perl-5.16.2"

    sheep::perl {  $perl: }
    include sheep::web::laurielapworth
    include sheep::web::imageeasel

    notify{"In default 2": }
}
