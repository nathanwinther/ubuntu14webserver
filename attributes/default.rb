default['ubuntu14webserver']['chef_run_once_directory'] = '/var/chef/run_once'

# database
default['ubuntu14webserver']['database']['bind_address'] = '0.0.0.0'
default['ubuntu14webserver']['database']['max_allowed_packet'] = '64M'
default['ubuntu14webserver']['database']['root_password'] = ''
default['ubuntu14webserver']['database']['remote_root'] = true

# web
default['ubuntu14webserver']['web']['apache_run_user'] = 'www-data'
default['ubuntu14webserver']['web']['apache_run_group'] = 'www-data'
default['ubuntu14webserver']['web']['default_site'] = '000-default'
default['ubuntu14webserver']['web']['default_site_ssl'] = 'default-ssl'

