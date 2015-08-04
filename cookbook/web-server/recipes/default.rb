#
# Cookbook Name:: web-server
# Recipe:: default
#
# Copyright (C) 2015 Landon Adrian
#
# All rights reserved - Do Not Redistribute
#

node.default['apt']['compile_time_update'] = true
node.default['build-essential']['compiletime'] = true
include_recipe 'apt::default'


include_recipe 'build-essential::default'
include_recipe "web-server::NFO_rackbox"
include_recipe "web-server::NFO_Database"