#
# Cookbook:: myiis
# Recipe:: server.rb
#
# Copyright:: 2017, The Authors, All Rights Reserved.

powershell_script 'install-iis' do 
	code <<EOF
	Add-WindowsFeature Web-Server
EOF
	guard_interpreter :powershell_script
	not_if "(Get-WindowsFeature -Name Web-Server).installed"
end

directory 'C:\inetpub\wwwroot' do
end

template 'C:\inetpub\wwwroot\Default.htm' do
	source 'Default.htm.erb'
end

service 'w3svc' do
	action [:enable, :start]
end
