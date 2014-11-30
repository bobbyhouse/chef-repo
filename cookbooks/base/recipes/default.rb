#
# Cookbook Name:: base
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

cron_d "chefclient" do
  action :create
  minute '15'
  command '/usr/local/bin/chef-client'
end
