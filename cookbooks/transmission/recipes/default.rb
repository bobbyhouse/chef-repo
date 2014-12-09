#
# Cookbook Name:: transmission
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

transmission_pkgs = value_for_platform(
  ["debian", "ubuntu"] => {
    "default" => ["transmission", "transmission-cli", "transmission-daemon"]
  },
  "default" => ["transmission", "transmission-cli", "transmission-daemon"]
)

transmission_pkgs.each do |pkg|
  package pkg do
    action :install
  end
end

template "/etc/transmission-daemon/settings.json" do
  source "settings.erb"
  mode 0600
  owner "debian-transmission"
  group "debian-transmission"
end
