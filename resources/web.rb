property :apache_run_user, String, default: 'www-data'
property :apache_run_group, String, default: 'www-data'

action :create do

  apt_package 'apache2' do
    action :install
  end

  service 'apache2' do
    action [:enable, :start]
  end

  execute 'mod_rewrite' do
    command 'a2enmod rewrite'
    action :run
  end

  execute 'mod_ssl' do
    command 'a2enmod ssl'
    action :run
  end

  template '/etc/apache2/envvars' do
    source 'apache2.envvars.erb'
    owner 'root'
    group 'root'
    mode '0644'
    variables ({
      :apache_run_user => apache_run_user,
      :apache_run_group => apache_run_group
    })
    notifies :restart, 'service[apache2]'
  end
  
  execute 'default_site' do
    command 'a2ensite ' + node['ubuntu14webserver']['web']['default_site']
    notifies :restart, 'service[apache2]'
    action :run
  end

end

