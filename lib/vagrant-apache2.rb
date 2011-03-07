require 'vagrant'
require File.dirname(__FILE__) + '/vagrant-apache2/command'
require File.dirname(__FILE__) + '/vagrant-apache2/middleware'

# Create a new middleware stack "apache2" which is executed for
# apache2 commands. See the VagrantApache2::Middleware docs for more
# information.
apache2 = Vagrant::Action::Builder.new do
  use VagrantApache2::Middleware
end

Vagrant::Action.register(:apache2, apache2)

# Add our custom translations to the load path
I18n.load_path << File.expand_path("../../locales/en.yml", __FILE__)
