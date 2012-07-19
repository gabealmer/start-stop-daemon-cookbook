#
# Cookbook Name:: start-stop-daemon
# Attributes:: start-stop-daemon
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

default['start-stop-daemon']['version'] = '1.15.8.12'
default['start-stop-daemon']['checksum'] = 'ac9e693090090aef4c3f80e62439102ddf067c3'

dpkg_tar_path = "dpkg_#{node['start-stop-daemon']['version']}.tar.bz2"
default['start-stop-daemon']['src_url'] = "http://ftp.de.debian.org/debian/pool/main/d/dpkg/#{dpkg_tar_path}"
