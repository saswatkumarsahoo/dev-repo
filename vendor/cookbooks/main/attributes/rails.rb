user = `echo $SUDO_USER`.chomp
default['rails']['user'] = user
default['rails']['version'] = '3.2.13'

default['rubymine']['user'] = user
default['rubymine']['version'] = '5.0.2'
default['rubymine']['file_name'] = "RubyMine-#{node[:rubymine][:version]}"
default['rubymine']['installation_folder'] = "#{ENV['HOME']}/Applications"
default['rubymine']['download_path'] = "#{Chef::Config[:file_cache_path]}/#{node[:rubymine][:file_name]}.tar.gz"
default['rubymine']['download_url'] = "http://download.jetbrains.com/ruby/#{node[:rubymine][:file_name]}.tar.gz"