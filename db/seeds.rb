# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'active_record/fixtures'

User.delete_all
User.create( :email=>"akira@awongh.com", :password=>"foobar" ) 
User.create( :email=>"janet@foobar.com", :password=>"foobar" ) 
User.create( :email=>"chris@foobar.com", :password=>"foobar" ) 
Workout.delete_all
Workout.create( :name=>"fran", :user_id=>1 ) 
