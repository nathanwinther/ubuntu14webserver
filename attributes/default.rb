default['ubuntu14webserver']['chef_run_once_directory'] = '/var/chef/run_once'

# database
default['ubuntu14webserver']['database']['bind_address'] = '127.0.0.1'
default['ubuntu14webserver']['database']['max_allowed_packet'] = '16M'
default['ubuntu14webserver']['database']['root_password'] = ''
default['ubuntu14webserver']['database']['remote_root'] = false

# web
default['ubuntu14webserver']['web']['apache_run_user'] = 'www-data'
default['ubuntu14webserver']['web']['apache_run_group'] = 'www-data'

