#
# Cookbook Name:: ubuntu14webserver
# Recipe:: memcache
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

ubuntu14webserver_memcache 'memcache' do
  install_memcache node['ubuntu14webserver']['memcache']['install_memcache']
  action :create
end

