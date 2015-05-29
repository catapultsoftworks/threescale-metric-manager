sudo service iptables stop
sudo cp /vagrant/apps/threescale-metric-manager/config/threescale-metric-manager_nginx /etc/nginx/sites-available
sudo ln -s /etc/nginx/sites-available/threescale-metric-manager_nginx /etc/nginx/sites-enabled

kill -9 $(cat /vagrant/apps/threescale-metric-manager/tmp/pid/unicorn.pid)
sudo /usr/sbin/nginx -s stop
cd /vagrant/apps/threescale-metric-manager
bundle
bundle exec unicorn -E development -c /vagrant/apps/threescale-metric-manager/config/unicorn.rb.vagrant -D
sudo /usr/sbin/nginx
