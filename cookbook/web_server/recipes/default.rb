#
# Cookbook Name:: Webserver
# Recipe:: default
#
# Copyright (C) 2015 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#
include_recipe 'apt::default'
include_recipe "web_server::NFO_rackbox"