#
# Cookbook Name:: motd
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

node.default["pci"]["in_scope"] = true

template "/etc/motd" do 
	source "motd.erb"
	mode "0644"
end
