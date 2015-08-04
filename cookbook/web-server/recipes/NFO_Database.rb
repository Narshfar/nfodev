#
# Cookbook Name:: web-server
# Recipe:: NFO_Database
#
# Copyright (c) 2015 The Authors, All Rights Reserved.
# 

include_recipe "postgresql::ruby"
include_recipe "postgresql::server"
include_recipe "database::postgresql"

postgresql_connection_info = {
  :host     => "localhost",
  :username => 'postgres',
  :password => node['postgresql']['password']['postgres']
}

postgresql_database_user 'postgres' do
  connection    postgresql_connection_info
  password		node['postgresql']['password']['postgres']
  action        :create
end


postgresql_database 'WebApp_production' do
  connection postgresql_connection_info
  action :create
end

postgresql_database_user 'postgres' do
  connection    postgresql_connection_info
  database_name 'WebApp_production'
  privileges    [:all]
  action        :grant
end

postgresql_database_user 'apps' do
  connection    postgresql_connection_info
  password      node['postgresql']['password']['apps']
  action        :create
end

postgresql_database_user 'apps' do
  connection    postgresql_connection_info
  database_name 'WebApp_production'
  privileges    [:all]
  action        :grant
end