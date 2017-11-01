#
# Cookbook:: myiis
# Recipe:: static-file
#
# Copyright:: 2017, The Authors, All Rights Reserved.

cookbook_file 'C:\inetpub\wwwroot\Default.htm' do 
	source 'Default.htm'
end
