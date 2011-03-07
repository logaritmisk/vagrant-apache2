# -*- encoding: utf-8 -*-
require File.expand_path("../lib/vagrant-apache2/version", __FILE__)

Gem::Specification.new do |s|
  s.name        = "vagrant-apache2"
  s.version     = VagrantApache2::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Anders Olsson"]
  s.email       = ["anders.e.olsson@gmail.com"]
  s.homepage    = "https://github.com/Logaritmisk/vagrant-apache2"
  s.summary     = "A Vagrant plugin to execute `apache2` commands in the VM"
  s.description = "A Vagrant plugin to execute `apache2` commands in the VM"

  s.required_rubygems_version = ">= 1.3.6"
  s.rubyforge_project         = "vagrant-apache2"

  s.add_dependency "vagrant", ">= 0.6.0"
  s.add_development_dependency "protest", "~> 0.4.0"
  s.add_development_dependency "mocha", "~> 0.9.8"
  s.add_development_dependency "bundler", ">= 1.0.0"

  s.files        = `git ls-files`.split("\n")
  s.executables  = `git ls-files`.split("\n").map{|f| f =~ /^bin\/(.*)/ ? $1 : nil}.compact
  s.require_path = 'lib'
end
