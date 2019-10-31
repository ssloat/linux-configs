
sudo yum install 'Development Tools'

for x in epel-release python-devel python-pip python-wheel;
do
  sudo yum install $x
done

sudo pip install --upgrade setuptools

for p in nose bitarray sqlalchemy monthdelta numpy; do sudo easy_install $p; done

sudo yum install nodejs
sudo yum install npm

yum install fontconfig freetype freetype-devel fontconfig-devel libstdc++

https://www.bonusbits.com/wiki/HowTo:Install_PhantomJS_on_CentOS
wget https://bitbucket.org/ariya/phantomjs/downloads/phantomjs-1.9.8-linux-x86_64.tar.bz2
mkdir -p /opt/phantomjs
tar -xjvf ~/downloads/phantomjs-1.9.8-linux-x86_64.tar.bz2 --strip-components 1 /opt/phantomjs/
ln -s /opt/phantomjs/bin/phantomjs /usr/bin/phantomjs

