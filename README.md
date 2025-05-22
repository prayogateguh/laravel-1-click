```
curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add -
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(grep -oP '(?<=UBUNTU_CODENAME=).*' /etc/os-release || lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list
wget -O- https://apt.releases.hashicorp.com/gpg | sudo gpg --dearmor -o /usr/share/keyrings/hashicorp-archive-keyring.gpg
sudo apt-get update && sudo apt-get install packer
packer build template.json

su larasail
cd /var/www/
mv /var/www/laravel /var/www/laravel_backup
git clone https://github.com/prayogateguh/jadidlabs.com.git laravel
sudo chown -R larasail:www-data /var/www/laravel/storage
cd /var/www/laravel
composer install
cp .env.example .env

sudo snap install core; sudo snap refresh core
sudo apt remove certbot
sudo snap install --classic certbot
sudo ln -s /snap/bin/certbot /usr/bin/certbot
sudo nano /etc/nginx/sites-available/laravel
sudo nginx -t
sudo systemctl reload nginx
sudo ufw allow 'Nginx Full'
sudo ufw delete allow 'Nginx HTTP'
sudo ufw status
sudo certbot --nginx -d jadidlabs.com -d www.jadidlabs.com
sudo systemctl status snap.certbot.renew.service
sudo certbot renew --dry-run
```
