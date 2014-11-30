#
# Cookbook Name:: share-files
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe "nfs::server"

directory "/var/nfs/share" do
  owner 'nobody'
  group 'nogroup'
  mode 0777
  action :create
end

mount "/var/nfs/share" do
  device "703fcc7e-c4de-4fa9-8ae3-5fa6827ab658"
  device_type :uuid
  fstype "auto"
  options "rw,user"
  action [:mount, :enable]
end

nfs_export "/var/nfs/share" do
  network "10.1.1.1/24"
  writeable true
  sync true
  options ['no_root_squash,sync,no_subtree_check,no_root_squash,insecure']
end
