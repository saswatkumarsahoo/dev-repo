# Rails (as a starting default)
rvm_gem_binary = "#{ENV['HOME']}/.rvm/bin/gem"
gem_package "rails" do
  version node[:rails][:version]
  gem_binary rvm_gem_binary
end
%w(bundler execjs therubyracer).each do |gem|
  gem_package gem do
    gem_binary rvm_gem_binary
  end
end

# Database setup
include_recipe "main::database"

# Setup application/tools
include_recipe "main::rubymine"