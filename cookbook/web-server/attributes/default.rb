#
# Cookbook Name:: web-server
# Attribute:: default
#

default[:web_server][:release] = "v#{Berkshelf::Webserver::Chef.cookbook_version(run_context)}"
default['postgresql']['config']['port'] = 5432
default['postgresql']['password']['postgres'] = 'password'
default['postgresql']['password']['apps'] = 'password'
default['postgresql']['pg_hba'] = [
  {:type => 'local', :db => 'all', :user => 'postgres', :addr => nil, :method => 'ident'},
  {:type => 'local', :db => 'all', :user => 'all', :addr => nil, :method => 'md5'},
  {:type => 'host', :db => 'all', :user => 'all', :addr => '127.0.0.1/32', :method => 'md5'},
  {:type => 'host', :db => 'all', :user => 'all', :addr => '::1/128', :method => 'md5'}
]

default["appbox"]["admin_keys"] = ["ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCyqtYTS7RtrHkqtPsg6cAqm4J7eroqExH3QqOmWbX3c6Tahy/ViMCgSPzXCdUZRlmPiYaqD0MYwi0Ul4AO6Y978V8XB3eRFhB7HnpnDq8FXR3qZjm6qYAZCRJqoW5uQL+m0TrlfREN8tCD0SYg5bYt2VEW32Yn20qEVix14qmxgUxz6ZENwXrqDGSy7ZofC1zKqDhWUazPz562sQw5AitfX3m1FIxB4vKXnfHF8u/qE7Tw+DUvxDbHex5qiGKkaI4rJkz/9AOPAJHKitl4Nw27Q397GJm9mkkZSQ4Zd81j3j2D/nlOGAoVc0HIYn5R/yM+KA3liH4qOmTkg2VEOfuf landon.s.adrian@gmail.com
"]
default["appbox"]["deploy_keys"] = ["ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCyqtYTS7RtrHkqtPsg6cAqm4J7eroqExH3QqOmWbX3c6Tahy/ViMCgSPzXCdUZRlmPiYaqD0MYwi0Ul4AO6Y978V8XB3eRFhB7HnpnDq8FXR3qZjm6qYAZCRJqoW5uQL+m0TrlfREN8tCD0SYg5bYt2VEW32Yn20qEVix14qmxgUxz6ZENwXrqDGSy7ZofC1zKqDhWUazPz562sQw5AitfX3m1FIxB4vKXnfHF8u/qE7Tw+DUvxDbHex5qiGKkaI4rJkz/9AOPAJHKitl4Nw27Q397GJm9mkkZSQ4Zd81j3j2D/nlOGAoVc0HIYn5R/yM+KA3liH4qOmTkg2VEOfuf landon.s.adrian@gmail.com
"]
default["appbox"]["admin_user"] = "devops"
default["appbox"]["deploy_user"] = "deploy"
default["appbox"]["apps_user"] = "apps"
