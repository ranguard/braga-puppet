define sheep::perl(
    $version = $name,
) {

    # install the perl
    perlbrew::build { $version: }->

    # install cpanm
    perlbrew::install_cpanm { $version: }

    # Modules for websites
    perlbrew::install_module { [
        "Business::PayPal"                             ,
        "Catalyst::Action::RenderView"                 ,
        "Catalyst::Authentication::Credential::HTTP"   ,
        "Catalyst::Plugin::Cache"                      ,
        "Catalyst::Plugin::Cache::Store::FastMmap"     ,
        "Catalyst::Plugin::ConfigLoader"               ,
        "Catalyst::Plugin::Session"                    ,
        "Catalyst::Plugin::Session::State::Cookie"     ,
        "Catalyst::Plugin::Session::Store::FastMmap"   ,
        "Catalyst::Plugin::Static::Simple"             ,
        "Catalyst::Runtime"                            ,
        "Catalyst::View::TT"                           ,
        "CHI"                                          ,
        "Config::General"                              ,
        "Data::UUID"                                   ,
        "DateTime"                                     ,
        "ExtUtils::MakeMaker"                          ,
        "File::Temp"                                   ,
        "Image::Imlib2::Thumbnail::S3"                 ,
        "MIME::Types"                                  ,
        "Moose"                                        ,
        "MooseX::MethodAttributes::Role"               ,
        "namespace::autoclean"                         ,
        "Net::Amazon::S3"                              ,
        "Net::FTP"                                     ,
        "SimpleDB::Class"                              ,
        "Test::More"                                   ,
        "File::Slurp",
        "IPC::Run",
    ]:
        perl => $sheep::perl,
    }

}

