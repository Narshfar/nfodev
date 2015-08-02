#
# Cookbook Name:: web_server
# Recipe:: NFO_rackbox
#
# Copyright (c) 2015 The Authors, All Rights Reserved.
# 



node.default["rackbox"]["ruby"]["versions"] = ["2.2.2", "1.9.3-p385"]

node.default["rackbox"]["ruby"]["global_version"] = "2.2.2"

node.default["rackbox"]["apps"]["passenger"] = [
 {
   "appname" => "WebApp",
   "hostname" => "www.narshfar.com",
   "nginx_config" => {
   	 node.default["rackbox"]["default_config"]["nginx"]["template_cookbook"] => "web_server"
   }
 }
]

include_recipe "rackbox::default"