name             'start-stop-daemon-cookbook'
maintainer       'Gabor Almer'
maintainer_email 'almergabor@gmail.com'
license          'Apache 2.0'
description      'Installs start-stop-daemon'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '1.0.0'

recipe 'start-stop-daemon', 'Installs start-stop-daemon to any Linux distribution'

depends 'build-essential'

%w( debian ubuntu centos redhat ).each do |os|
  supports os
end
