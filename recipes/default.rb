script "download" do
  interpreter "bash"
  user "vagrant"
  cwd "/home/vagrant"
  code <<-EOH
  [ -d /home/vagrant/daemonize ] && rm -rf /home/vagrant/daemonize;
  git clone git://github.com/bmc/daemonize.git
  EOH
end
script "install" do
  interpreter "bash"
  user "vagrant"
  cwd "/home/vagrant/daemonize"
  code <<-EOH
  ./configure
  make
  sudo make install
  EOH
end
