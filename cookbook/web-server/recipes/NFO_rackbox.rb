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

node.default['nginx']['passenger']['install_method'] == 'source'

include_recipe "appbox"
include_recipe "rackbox::ruby"
include_recipe "nginx::passenger"
include_recipe "nginx::source"
include_recipe "runit"
include_recipe "rackbox::passenger"
