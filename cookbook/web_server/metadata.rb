name             'web_server'
maintainer       'YOUR_NAME'
maintainer_email 'YOUR_EMAIL'
license          'All rights reserved'
description      'Installs/Configures Webserver'
long_description 'Installs/Configures Webserver'
version          '0.1.1'

depends 'apt'
depends 'rbenv'
depends 'nginx'
depends 'runit'
depends 'rackbox'
provides "web_server::default"