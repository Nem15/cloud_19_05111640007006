sudo apt-get update -y
sudo apt-get install -y avahi-daemon libnss-mdns
sudo apt-get install -y python3  python3-pip python3-venv
sudo pip3 install --upgrade pip
cd /home/vagrant
git clone https://github.com/rm77/phonebook-service.git
cd phonebook-service
git checkout on-docker-1

sudo python3 -m venv venv
sudo source venv/bin/activate
sudo pip3 install --upgrade pip
sudo pip3 install -r requirements.txt
sudo python3 Phonebook_Service.py