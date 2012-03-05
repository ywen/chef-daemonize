maintainer        "Yi"
maintainer_email  "Wen"
license           "Apache 2.0"
description       "Installs daemonize."
long_description  IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version           "0.10.3"
%w{ debian ubuntu centos redhat fedora }.each do |os|
  supports os
end
recipe "daemonize", "Installs daemonize"
