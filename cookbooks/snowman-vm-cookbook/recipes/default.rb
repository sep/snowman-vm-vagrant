#
# Cookbook:: snowman-vm-cookbook
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.
include_recipe 'vcruntime-wrapper::vc2008'
include_recipe 'vcruntime-wrapper::vc2010'
include_recipe 'vcruntime-wrapper::vc2010_x86'
include_recipe 'vcruntime-wrapper::vc2015'
include_recipe 'vcruntime-wrapper::vc2015_x86'