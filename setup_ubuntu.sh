#!/bin/sh

# sudo sysv-rc-conf ddclient on
# sudo service ddclient start

#/proc/acpi/wakeup
#echo "EUSB" > /proc/acpi/wakeup
#echo "USBE" > /proc/acpi/wakeup

# cpan App::cpanminus -- installs cpanm
# https://pypi.python.org/pypi/PyVirtualDisplay

#http://www.tecmint.com/upgrade-linux-mint-16-to-linux-mint-17/


# pandas, matplotlib
# libpng-devel, build-essential

for p in curl git tmux python-dev sqlite3 python-pip libzmq-dev; do sudo apt-get install $p; done


#Latest Django
#git clone https://github.com/django/django.git django-trunk; sudo pip install -e django-trunk

cd ~/Downloads
wget https://bootstrap.pypa.io/ez_setup.py
sudo python ez_setup.py 

for p in nose bitarray sqlalchemy monthdelta pyzmq numpy; do sudo easy_install $p; done



#tangowithdjango.com/book17
#sudo pip install -U django==1.7
sudo pip install pillow
sudo pip install virtualenv
sudo pip install virtualenvwrapper # source /usr/local/bin/virtualenvwrapper.sh 
  # mkvirtualenv rango
  # lsvirtualenv
  # workon rango

# pycharm?

#Django
#django-admin.py startproject name
#python manage.py runserver {ip:port}
#python manage.py migrate
#python manage.py startapp name # settings.py - add "name" to INSTALLED_APPS

#Flask
sudo pip install Flask
sudo pip install Flask-SQLAlchemy
sudo pip install Flask-WTF

exit


#####################
# Netflix
sudo add-apt-repository ppa:ehoover/compholio
sudo apt-get update && sudo apt-get install netflix-desktop
#
# In ~/.wine-browser/drive_c/browser-profile/prefs.js
# 34 user_pref("browser.tabs.autoHide", false);
#####################

#####################
##Spotify
#If you don't already have the Linux client installed, install like this:
 
# 1. Add our repository. As root or with sudo, create
#    a file called /etc/apt/sources.list.d/spotify.list and add
#    "deb http://repository.spotify.com stable non-free" to it.
#    Here's a one-liner:
sudo sh -c 'echo "deb http://repository.spotify.com stable non-free" > /etc/apt/sources.list.d/spotify.list'
 
# 2. If you want to verify the downloaded packages,
#    you will need to add our public key
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 94558F59
 
# 3. Run apt-get update
sudo apt-get update
 
# 4. Install spotify!
sudo apt-get install spotify-client
#####################

#####################
## Amazon Prime
sudo add-apt-repository ppa:mjblenner/ppa-hal
sudo apt-get update
sudo apt-get install hal

cd ~/.adobe/Flash_Player
rm -rf NativeCache AssetCache APSPrivateData2

sudo apt-get install ia32-libs
#####################


exit

# nodejs and karma
# npm --- use -g to install globally
#
# karma requires google-chrome
#
# https://www.google.com/intl/en-US/chrome/browser/desktop/index.html
#
# OR
#
#add these lines at the bottom of /etc/apt/sources.list:
# 
####  Google Chrome ###
## You may comment out this entry, but any other modifications may be lost.
#deb http://dl.google.com/linux/chrome/deb/ stable main
# 
#sudo apt-get update
#sudo apt-get install google-chrome-stable
#
# exclude angular-scenario.js

#Chrome extensions:
https://chrome.google.com/webstore/detail/dropdown-list-of-most-vis/logbmehmiacemkimbpcbjgaikobdndah
https://chrome.google.com/webstore/detail/disconnect/jeoacafpbcihiomhlakheieifhpjdfeo?hl=en
https://chrome.google.com/webstore/detail/the-great-suspender/klbibkeccnjlkjkiokjodocebajanakg?hl=en
https://chrome.google.com/webstore/detail/adblock/gighmmpiobklfepjocnamgkkbiglidom?hl=en
https://chrome.google.com/webstore/detail/https-everywhere/gcbommkclmclpchllfjekcdonpmejbdp?hl=en

#VirtualBox
## DON'T use apt-get.  just download .deb file

#create vboxusers group
#sudo groupadd vboxusers
#sudo usermod -a -G vboxusers stephen

# Extensions
#  sudo apt-get install dkms
#  sh ./VBoxLinuxAdditions.run

# in VM (to enable shared folder access):  sudo usermod -a -G vboxsf USER
#   then logout/login



# Genymotion
# genymotion: /usr/lib/x86_64-linux-gnu/libstdc++.so.6: version `CXXABI_1.3.8' not found (required by /home/stephen/genymotion/libQt5Core.so.5)
#
# $ sudo apt-add-repository ppa:ubuntu-toolchain-r/test
# $ sudo apt-get update
# $ sudo apt-get install gcc-4.9 g++-4.9
