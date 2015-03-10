require 'rake'
require "sinatra/activerecord/rake"
require ::File.expand_path('../config/environment', __FILE__)

Rake::Task["db:create"].clear
Rake::Task["db:drop"].clear

# NOTE: Assumes SQLite3 DB
desc "create the database"
task "db:create" do
  touch 'db/db.sqlite3'
end

desc "drop the database"
task "db:drop" do
  rm_f 'db/db.sqlite3'
end

desc 'Retrieves the current schema version number'
task "db:version" do
  puts "Current version: #{ActiveRecord::Migrator.current_version}"
end

desc "populate db"
task "db:populate" do
  puts "Populating Database"
  Contact.create(email: "george@jetson.com", firstname: "George", lastname: "Jetson")
  Contact.create(email: "fred@flintstone.com", firstname: "Fred", lastname: "Flintstone")
end