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
Workout.create( :name=>"fran", :user_id=>1, :description => "> 21 Barbell Thrusters, 21 Pull-ups, 15 Barbell Thrusters, 15 Pull-ups, 9 Barbell Thrusters, 9 Pull-Ups" ) 
Workout.create( :name=>"helen", :user_id=>1, :description=>"400m Sprint, 21 Kettlebell Swings (24kg), 12 Pull-ups")
Workout.create( :name=>"helen", :user_id=>1, :description=>"Pull-Up Progression-Day 13: 7-6-5-4-3, Snatch Balance 5-5-3-3-3-1-1-1, Split Handstand Hold-High Box Drill: accumulate 3 mins total, 300 DUs for time, EMOTM complete 3 burpees,
Before class is over every athlete needs to Sled Drag 600 Meters at any point during the 1.5 hours" )
Wod.delete_all
Wod.create( :user_id=>1, :workout_id=>1 ) 
Wod.create( :user_id=>2, :workout_id=>1 ) 
Wod.create( :user_id=>1, :workout_id=>2 ) 
Wod.create( :user_id=>2, :workout_id=>2 ) 
