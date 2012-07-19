#
# Cookbook Name:: start-stop-daemon
# Recipe:: default
#
# Copyright 2012, Gabor Almer
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

include_recipe "build-essential"

dpkg_tar = "dpkg_#{node['start-stop-daemon']['version']}.tar.bz2"

remote_file "/usr/local/src/#{dpkg_tar}" do
  source node['start-stop-daemon']['src_url']
  checksum node['start-stop-daemon']['checksum']
  mode 0644
end

execute "tar -jxf #{dpkg_tar}" do
  cwd "/usr/local/src"
  creates "/usr/local/src/dpkg-#{node['start-stop-daemon']['version']}"
end

bash "compile dpkg" do
  cwd "/usr/local/src/dpkg-#{node['start-stop-daemon']['version']}"
  code <<-EOH
    ./configure
    make
  EOH
  creates "/usr/local/src/dpkg-#{node['start-stop-daemon']['version']}/utils/start-stop-daemon"
end

bash "install start-stop-daemon" do
  cwd "/usr/local/src/dpkg-#{node['start-stop-daemon']['version']}"
  code <<-EOH
    cd utils
    make install
  EOH
  not_if {File.exists?("/usr/local/sbin/start-stop-daemon")}
end
