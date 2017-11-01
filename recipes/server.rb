#
# Cookbook:: myiis
# Recipe:: server.rb
#
# Copyright:: 2017, The Authors, All Rights Reserved.

powershell_script 'install-iis' do 
	code 'Add-WindowsFeature Web-Server'
end

directory 'C:\inetpub\wwwroot' do
end

template 'C:\inetpub\wwwroot\Default.htm' do
	source 'Default.htm.erb'
end

service 'w3svc' do
	action [:enable, :start]
end
