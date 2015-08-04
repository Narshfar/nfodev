name             'web-server'
maintainer       'Landon Adrian'
maintainer_email 'voxes@narshfar.com'
license          'All rights reserved'
description      'Installs/Configures Webserver'
long_description 'Installs/Configures Webserver'
version          '0.4.1'

depends 'apt'
depends 'rbenv'
depends 'nginx'
depends 'build-essential'
depends 'runit'
depends 'rackbox'
depends 'postgresql'
depends 'database'
provides "web-server::default"
recipe 'web-server::default' , "installs the web_server environment and configs."
