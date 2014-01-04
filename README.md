
Setup
------

Ubuntu 12.04 LTS “Precise Pangolin”

```sh
wget http://apt.puppetlabs.com/puppetlabs-release-precise.deb
sudo dpkg -i puppetlabs-release-precise.deb
sudo apt-get update
sudo apt-get install puppetmaster
```

Clone this repo, copy 'ssl' from /etc/puppet into it,
then make the clone symlinked as /etc/puppet


/bin/su - -c 'umask 022; /usr/local/perlbrew/perls/perl-5.16.2/bin/cpanm --verbose SimpleDB::Class' perlbrew


