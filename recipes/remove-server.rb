#
# Cookbook:: myiis
# Recipe:: server.rb
#
# Copyright:: 2017, The Authors, All Rights Reserved.

service 'w3svc' do
	action :stop
end

directory 'C:\inetpub\wwwroot' do
	recursive true
	action :delete
end

powershell_script 'remove-iis' do 
	code <<-'EOF'
	Remove-WindowsFeature Web-Server
	EOF
	guard_interpreter :powershell_script
	only_if "(Get-WindowsFeature -Name Web-Server).installed"
end
