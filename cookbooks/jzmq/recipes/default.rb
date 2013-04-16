remote_file "/tmp/jzmq.deb" do
  source node[:jzmq][:package_deb_url]
end

dpkg_package "jzmq" do
  source "/tmp/jzmq.deb"
  action :install
end
