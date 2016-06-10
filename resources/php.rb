action :create do

  service 'apache2' do
    action :nothing
  end

  apt_package 'php5' do
    action :install
    notifies :restart, 'service[apache2]'
  end

  apt_package 'php-apc' do
    action :install
    notifies :restart, 'service[apache2]'
  end

  apt_package 'php5-curl' do
    action :install
    notifies :restart, 'service[apache2]'
  end

  apt_package 'php5-gd' do
    action :install
    notifies :restart, 'service[apache2]'
  end

  apt_package 'php5-imagick' do
    action :install
    notifies :restart, 'service[apache2]'
  end

  apt_package 'php5-mcrypt' do
    action :install
    notifies :restart, 'service[apache2]'
  end

  apt_package 'php5-mysql' do
    action :install
    notifies :restart, 'service[apache2]'
  end

  apt_package 'php5-xdebug' do
    action :install
    notifies :restart, 'service[apache2]'
  end

  apt_package 'php5-xmlrpc' do
    action :install
    notifies :restart, 'service[apache2]'
  end

  apt_package 'php5-xsl' do
    action :install
    notifies :restart, 'service[apache2]'
  end

end

