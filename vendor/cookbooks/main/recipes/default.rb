# Necessary packages
package "git-core"
package "curl"

# Install Heroku
bash "install heroku toolbelt" do
  code <<-EOH
    wget -qO- https://toolbelt.heroku.com/install-ubuntu.sh | sh
  EOH
end