property :install_memcache, [ TrueClass, FalseClass ], default: false

action :create do

  service 'apache2' do
    action :nothing
  end

  apt_package 'memcached' do
    action :install
    only_if { install_memcache }
  end

  apt_package 'php5-memcache' do
    action :install
    notifies :restart, 'service[apache2]'
    only_if { install_memcache }
  end

end

