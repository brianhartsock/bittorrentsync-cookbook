#
# Cookbook Name:: bittorrentsync
# Attributes:: default
#
# Copyright 2013, Opscode, Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

#Configure which configs are autostarted. By default, the debconf config
#will be started if this is not overridden. Some examples:
#
# Single config named general.conf: "general"
# Multiple configs: "general user1 user2"

#Configure profiles to run.  See below examples.
default['bittorrentsync']['autostart'] = false
default['bittorrentsync']['profiles'] = []

#Create 'my_profile.conf' and run it only.
#
#default['bittorrentsync']['autostart'] = 'my_profile'
#default['bittorrentsync']['profiles'] = {
#  :my_profile => '{
#    "device_name": "my server",
#    "storage_path" : "/home/user/.btsync",
#    "listening_port" : 12345,
#    "check_for_updates" : false,
#    "use_upnp" : false,
#    "download_limit" : 0,
#    "upload_limit" : 0,
#    "disk_low_priority" : true,
#    "lan_encrypt_data" : true,
#    "lan_use_tcp" : false,
#    "rate_limit_local_peers" : false,
#    "folder_rescan_interval" : 600,
#    "webui" :
#    {
#    },
#    "shared_folders" :
#    [
#        {
#            "secret" : "my folder key",
#            "dir" : "/path/to/my/synced/folder",
#            "use_relay_server" : true,
#            "use_dht" : false,
#            "search_lan" : false,
#            "use_sync_trash" : true
#        }
#    ]
#  }'
#}
#

#Create 'my_profile.conf' and run it along with the default debconf config.
#
#default['bittorrentsync']['autostart'] = 'all'
#default['bittorrentsync']['profiles'] = ... same as above ...
