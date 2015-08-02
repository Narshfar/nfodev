#
# Cookbook Name:: web-server
# Attribute:: default
#

default[:web_server][:release] = "v#{Berkshelf::Webserver::Chef.cookbook_version(run_context)}"