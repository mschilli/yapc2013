# yapc2013-cookbook cookbook

# Requirements

* git
* VirtualBox
* Vagrant
* Ruby 1.9.3
* Bundler

# Usage

Checkout `yapc2013` demo repository from github.com and navigate to the cookbook directory.

    git clone git@github.com:mschilli/yapc2013.git
    cd yapc2013/yapc2013-cookbook

Install ruby dependencies for `berkshelf` and `test-kitchen` using `bundler`.

    bundle install

Fetch cookbook dependencies for the project using `berkshelf`.

    berks install

Create virtual machines that are defined in the in `.kitchen.yml` file. 

    bundle exec kitchen create

Provision packages that are necessary for the project onto the virtual machines. 

    bundle exec kitchen converge

Run `bats` test suite.

    bundle exec kitchen verify

# Author

Mike Schilli - <m@perlmeister.com>  
Venkat Venkataraju - <venkat.venkataraju@yahoo.com>