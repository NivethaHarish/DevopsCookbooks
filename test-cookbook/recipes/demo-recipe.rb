#
# Cookbook:: test-cookbook
# Recipe:: demo-recipe
#
# Copyright:: 2020, The Authors, All Rights Reserved.



package 'tree' do
	action :install
end

file '/myfile2' do
	content 'This is my 2nd file'
	action :create
	owner 'root'
	group 'root'
end

#['httpd','mariadb-server','mysql','unzip','git','vim].each do |p|
#	package p do
#		action :install
#	end
#end

%w(httpd mariadb-server mysql unzip git vim).each do |p|
	package p do
		action :install
	end
end


%w(hari guna kozhi mooka motte).each do |u|
	user u do
		action :create
	end
end
