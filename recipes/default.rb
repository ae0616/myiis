#
# Cookbook:: myiis
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

include_recipe 'myiis::server'

include_recipe 'myiis::static-file'