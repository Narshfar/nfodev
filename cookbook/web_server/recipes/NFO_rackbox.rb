#
# Cookbook Name:: web_server
# Recipe:: NFO_rackbox
#
# Copyright (c) 2015 The Authors, All Rights Reserved.
node["rackbox"]["ruby"]["versions"] = [""]
node["rackbox"]["ruby"]["global_version"] = ""

node["rackbox"]["apps"]["passenger"] = [
 {
   "appname" => "WebApp",            # app name
   "hostname" => "www.narshfar.com",  # domain name
   "nginx_config" => {             # overwrite default config for nginx:
     node["rackbox"]["default_config"]["nginx"]["template_cookbook"] = "web_server"

   },
   "runit_config" => {             # overwrite default config:
     "rack_env" => "staging"       #   node["rackbox"]["default_config"]["passenger_runit"]
   }
 }
]

include_recipe "rackbox::default"