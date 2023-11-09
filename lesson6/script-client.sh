ssh-keygen -t rsa -q -N '' -f /home/vagrant/.ssh/id_rsa
chown vagrant:vagrant /home/vagrant/.ssh/*
cp /home/vagrant/.ssh/id_rsa.pub /vagrant/
