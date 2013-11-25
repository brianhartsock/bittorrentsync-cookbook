# This is the configuration file for /etc/init.d/btsync
#
# Start only these btsync instances automatically via
# init script.
# Allowed values are "all", "none" or space separated list of
# names of the instances. If empty, "all" is assumed.
#
# The instance name refers to the btsync configuration file name.
# i.e. "general" would be /etc/btsync/general.conf
#
#AUTOSTART="all"
#AUTOSTART="none"
#AUTOSTART="general special"
#
# Optional arguments to btsync's command line. Be careful!
# You should only add thngs here if you know EXACTLY what
# you are doing!
DAEMON_ARGS=""
#
# Enable this to see more output during the init script
# execution
#DAEMON_INIT_DEBUG=1
<% if @autostart %>
AUTOSTART="<%= @autostart %>"
<% end %>
