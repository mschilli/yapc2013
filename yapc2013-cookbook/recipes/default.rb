#
# Cookbook Name:: yapc2013-cookbook
# Recipe:: default
#
# Copyright (C) 2013 YOUR_NAME
# 
# All rights reserved - Do Not Redistribute
#

include_recipe "perl"

cpan_module "Test::More" do
  force true
end

cpan_module "Plack" do
  force true
end

cpan_module "Dancer" do
  force true
end

cpan_module "YAML" do
  force true
end

cpan_module "Starman" do
  force true
end

psgi_application 'psgi Starman application' do
  server              'Starman'
  application_user    'nobody'
  application_home    '/tmp/examples/Web-App'
  script              '/tmp/examples/Web-App/bin/app.pl'
  socket              ':8080'
  nproc               '2'
  action              'install'
  notifies :restart, "service[app]"
end

service "app" do
  supports :status => true, :start => true, :stop => true, :restart => true
  action [ :enable ]
end
