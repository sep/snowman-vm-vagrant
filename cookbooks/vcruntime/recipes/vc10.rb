#
# Author:: Yvo van Doorn (<yvo@chef.io>)
# Cookbook:: vcruntime
# Recipe:: vc10
#
# Copyright:: 2013-2017, Chef Software, Inc.
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
case node['platform_family']
when 'windows'
  case node['kernel']['machine']
  when 'x86_64'
    package node['vcruntime']['vc10']['x64'][node['vcruntime']['vc10']['version']]['name'] do
      checksum node['vcruntime']['vc10']['x64'][node['vcruntime']['vc10']['version']]['sha256sum']
      source node['vcruntime']['vc10']['x64'][node['vcruntime']['vc10']['version']]['url']
      installer_type :custom
      options '/q'
    end
    package node['vcruntime']['vc10']['x86'][node['vcruntime']['vc10']['version']]['name'] do
      checksum node['vcruntime']['vc10']['x86'][node['vcruntime']['vc10']['version']]['sha256sum']
      source node['vcruntime']['vc10']['x86'][node['vcruntime']['vc10']['version']]['url']
      installer_type :custom
      options '/q'
    end
  when /i[3-6]86/
    package node['vcruntime']['vc10']['x86'][node['vcruntime']['vc10']['version']]['name'] do
      checksum node['vcruntime']['vc10']['x86'][node['vcruntime']['vc10']['version']]['sha256sum']
      source node['vcruntime']['vc10']['x86'][node['vcruntime']['vc10']['version']]['url']
      installer_type :custom
      options '/q'
    end
  end
end
