#
# Cookbook Name:: ubuntu14webserver
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

include_recipe 'ubuntu14webserver::apt'
include_recipe 'ubuntu14webserver::database'
include_recipe 'ubuntu14webserver::web'
include_recipe 'ubuntu14webserver::php'
include_recipe 'ubuntu14webserver::memcache'

