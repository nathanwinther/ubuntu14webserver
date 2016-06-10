#
# Cookbook Name:: ubuntu14webserver
# Recipe:: web
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

ubuntu14webserver_web 'apache2' do
  apache_run_user node['ubuntu14webserver']['web']['apache_run_user']
  apache_run_group node['ubuntu14webserver']['web']['apache_run_group']
  action :create
end

