#
# Cookbook Name:: apache
# Recipe:: default
#
# Copyright 2015, Biggins Co.
#
# All rights reserved - Do Not Redistribute
#


package "httpd" do 
	action :install
end

service "httpd" do
	action [:enable, :start]
end

node.default["apache"]["indexfile"] = "index.html"

cookbook_file "/var/www/html/index.html" do
	source node["apache"]["indexfile"]
	mode "0644"
end

