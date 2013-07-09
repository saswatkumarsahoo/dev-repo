user = node[:grails][:user]

# Packages
package "unzip"

# Ensure JDK is in path
bash "set JAVA_HOME" do
  user user
  code 'export JAVA_HOME="/usr/lib/jvm/default-java"'
end

# Install GVM
bash "install_gvm" do
  user user
  code "curl -s get.gvmtool.net | bash"
end

# Install Grails
bash "install grails" do
  user user
  code <<-EOH
    source "$HOME/.gvm/bin/gvm-init.sh"
    gvm install grails #{node[:grails][:version]}; true
  EOH
end

# Setup application/tools
include_recipe "main::intellij_idea"