#
# Cookbook Name:: ubuntu14webserver
# Recipe:: database
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

ubuntu14webserver_database 'mysql' do
  bind_address node['ubuntu14webserver']['database']['bind_address']
  max_allowed_packet node['ubuntu14webserver']['database']['max_allowed_packet']
  root_password node['ubuntu14webserver']['database']['root_password']
  remote_root node['ubuntu14webserver']['database']['remote_root']
  action :create
end

