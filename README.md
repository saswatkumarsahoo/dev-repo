This Chef repository enables you to quickly setup a Ruby on Rails development environment for Ubuntu (12.04 LTS).

## Quick Start
You can get started by executing the following in a Ubuntu environment:

    # Install curl
    sudo apt-get -y install curl

    # Install script
    curl -L https://raw.github.com/pmoghaddam/rails-chef-repo/master/bootstrap/ubuntu.sh | bash

    # Post Installation, update your shell environment
    source ~/.bashrc

    # Execute Chef-solo to configure your environment (e.g. Rails in this example).
    sudo chef-solo -c /var/chef/solo.rb -j /var/chef/workstations/rails.json

    # final restart is recommended

## Development
This chef repository utilizes Librarian (a Bundler equivalent) to manage vendor/community cookbooks. In short, Librarian is configured via `Cheffile` and will manage the `cookbooks` directory for you. *You should not directly touch the `cookbooks` directly*.

The custom cookbook is named `main` and is placed inside the `vendor` folder: `vendor/cookbooks/main`. If you wish you modify `main`'s recipies, make the changes directly inside the vendor folder. Afterwards, execute `librarian-chef install` to update the cookbooks folder.

### Chef-solo
Since Chef is being used to setup a single developer node, Chef-solo is leveraged. Chef-solo configuration is captured in:

    # Solo configuration file
    ./solo.rb

    # Workstation run-list
    ./workstations/rails.json # e.g. Rails

Alternative run lists can be executed as well.

## Additional Sources
* [Learn Chef](https://learnchef.opscode.com/screencasts/) - https://learnchef.opscode.com/screencasts/