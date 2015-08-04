#
# Cookbook Name:: web-server
# Recipe:: NFO_rackbox
#
# Copyright (c) 2015 The Authors, All Rights Reserved.
# 



node.default["rackbox"]["ruby"]["versions"] = ["2.2.2"]

node.default["rackbox"]["ruby"]["global_version"] = "2.2.2"

node.default["rackbox"]["apps"]["passenger"] = [
 {
   "appname" => "Narshfar",
   "hostname" => "www.narshfar.com",
   "nginx_config" => {
   	 node.default["rackbox"]["default_config"]["nginx"]["template_cookbook"] => "web-server"
   }
 }
]
node.default['nginx']['passenger']['root'] = '/opt/rbenv/versions/2.2.2/lib/ruby/gems/22.0/gems/passenger-5.0.15'
node.default['nginx']['passenger']['ruby'] = '/opt/rbenv/versions/2.2.2/bin/ruby'

node.default['nginx']['passenger']['install_method'] == 'source'
node.default['nginx']['source']['modules']  = %w(
  nginx::http_ssl_module
  nginx::http_gzip_static_module
  nginx::passenger
)
include_recipe "appbox"
include_recipe "rackbox::ruby"
gem_package 'passenger'
include_recipe "nginx::source"
include_recipe "runit"
include_recipe "rackbox::passenger"
