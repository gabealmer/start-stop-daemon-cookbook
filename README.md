Description
===========

Installs start-stop-daemon to any Linux ditributions

Idea from Florent Clairambault
[http://florent.clairambault.fr/get-start-stop-daemon-on-any-linux]

Requirements
============

## Platform

* Tested on Centos 6.2
* Should work on any linux distribution

## Cookbooks:

* build-essential

Opscode cookbooks (http://github.com/opscode/cookbooks/tree/master)


Attributes
==========

* start-stop-daemon['version'] - release version of dpkg to install
* start-stop-daemon['checksum'] - checksum of the binary
* start-stop-daemon['src_url'] - download location for dpkg source tarball


Usage
=====

Include the default recipe to install start-stop-daemon

*  include_recipe "start-stop-daemon"

You should include the recipe if the platform is not Debian or Ubuntu

LICENSE and AUTHOR
==================

Author: Gabor Almer (almergabor@gmail.com)

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
