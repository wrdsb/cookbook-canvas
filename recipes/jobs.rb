#
# Cookbook Name:: canvas
# Recipe:: jobs
#
# Copyright 2013, Waterloo Region District School Board
#
# Permission is hereby granted, free of charge, to any person obtaining
# a copy of this software and associated documentation files (the
# "Software"), to deal in the Software without restriction, including
# without limitation the rights to use, copy, modify, merge, publish,
# distribute, sublicense, and/or sell copies of the Software, and to
# permit persons to whom the Software is furnished to do so, subject to
# the following conditions:
#
# The above copyright notice and this permission notice shall be
# included in all copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
# EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
# MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
# NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
# LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
# OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
# WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
#

package "git"
package "build-essential"
package "python-software-properties"
package "python"
package "g++"
package "make"
package "ruby1.9.3"
package "zlib1g-dev"
package "libxml2-dev"
package "libmysqlclient-dev"
package "libxslt1-dev"
package "imagemagick"
package "libpq-dev"
package "libxmlsec1-dev"
package "libcurl4-gnutls-dev"
package "libxmlsec1"
package "openjdk-7-jre"
package "unzip"
package "ruby-dev"
package "libsqlite3-dev"
package "python-pip"

apt_repository 'node.js' do
  uri 'ppa:chris-lea/node.js'
end

apt_repository 'redis-server' do
  uri 'ppa:chris-lea/redis-server'
end

apt_repository 'ruby-ng' do
  uri 'ppa:brightbox/ruby-ng'
end

# Get Canvas application code
# cd /home/vagrant
# git clone https://github.com/instructure/canvas-lms.git canvas
# chown -R vagrant:www-data canvas
# cd canvas
# git branch --set-upstream-to origin/stable
# ln -s /home/vagrant/canvas /var/canvas

# Symlink Canvas config files to files in Mule project
# for config in amazon_s3 cache_store database delayed_jobs domain file_store outgoing_mail redis security external_migration
# do ln -s /vagrant/config/$config.yml config/$config.yml; done

# apt-get install -y libapache2-mod-passenger apache2
# if ! [ -L /var/www ]; then
  # rm -rf /var/www
  # ln -fs /vagrant /var/www
# fi
# a2enmod rewrite
# a2enmod passenger
# a2enmod ssl

# a2dissite 000-default.conf
# ln -s /vagrant/sites-available/canvas /etc/apache2/sites-available/canvas.conf
# a2ensite canvas

# apt-get install -y nodejs
# npm install -y -g coffee-script@1.6.2

# cd /home/vagrant/canvas
# gem install bundler -v 1.7.11
# sudo -u vagrant bundle install --path vendor/bundle --without=sqlite mysql

# Magical incantation to run initial_setup script,
# with options set via environment variables
# cd /home/vagrant/canvas
# sudo -u vagrant -E bash -c 'export CANVAS_LMS_ADMIN_EMAIL=website@wrdsb.on.ca && export CANVAS_LMS_ADMIN_PASSWORD=password && export CANVAS_LMS_ACCOUNT_NAME=WRDSB && export CANVAS_LMS_STATS_COLLECTION=opt_out && RAILS_ENV=production bundle exec rake db:initial_setup'

# Install and start automated jobs
# ln -s /var/canvas/script/canvas_init /etc/init.d/canvas_init
# update-rc.d canvas_init defaults
# /etc/init.d/canvas_init start

# Compile static assets
# sudo -u vagrant -i -E bash -c 'cd /home/vagrant/canvas && npm install'
# sudo -u vagrant -i -E bash -c 'cd /home/vagrant/canvas && bundle exec rake canvas:compile_assets'

# service apache2 restart

# cd /home/vagrant/canvas/vendor
# git clone https://github.com/instructure/QTIMigrationTool.git QTIMigrationTool
# cd QTIMigrationTool
# chmod +x migrate.py
# cd /home/vagrant
# chown -R vagrant:www-data canvas
# cd /home/vagrant/canvas
# script/delayed_job restart


