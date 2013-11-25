#
# Cookbook Name:: bittorrent_sync
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

apt_repository 'bittorrentsync' do
  uri 'http://ppa.launchpad.net/tuxpoldo/btsync/ubuntu/'
  distribution node['lsb']['codename']
  components ['main']
  keyserver 'keyserver.ubuntu.com'
  key 'D294A752'
end

package 'btsync'
service 'btsync'

node[:bittorrentsync][:profiles].each do |profile_name, profile|
  template "/etc/btsync/#{profile_name}.conf" do
    source 'profile.rb'
    mode 0400
    owner 'root'
    group 'root'
    variables({
      :profile => profile
    })
  end
end

template '/etc/default/btsync' do
  source 'btsync.rb'
  mode 0644
  owner 'root'
  group 'root'
  variables({
    :autostart => node[:bittorrentsync][:autostart]
  })

  notifies :restart, 'service[btsync]'
end
