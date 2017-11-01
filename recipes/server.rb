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

file 'C:\inetpub\wwwroot\Default.htm' do
	content '<h1>Hello, world!</h1>'
end

service 'w3svc' do
	action [:enable, :start]
end
