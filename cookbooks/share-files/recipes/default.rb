#
# Cookbook Name:: share-files
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe "nfs::server"

package "usbmount" do
  action :install
end

directory "/var/nfs/share" do
  owner 'nobody'
  group 'nogroup'
  mode 0644
  action :create
end

nfs_export "/var/nfs/share" do
  network "10.1.1.1/24"
  writeable true
  sync true
  options ['no_root_squash,sync,no_subtree_check,no_root_squash,insecure']
end
