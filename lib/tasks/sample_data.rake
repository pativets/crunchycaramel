require 'faker'

namespace :db do
  desc "Fill the database with sample users"
  task :populate => :environment do
    # 99.times do |n|
    #   name = Faker::Name.name
    #   email = "#{name.split[0]}_#{n}@samplemail.com"
    #   password = "password"
    #   User.create!(:name => name, 
    #                :email => email,
    #                :password => password,
    #                :password_confirmation => password)
    #   
    # end #99.times
    # 50.times do |n|
    #   category                   = "Free"
    #   start_date                 = Date.today
    #   start_time                 = Time.now
    #   end_date                   = Date.today
    #   end_time                   = Time.now + 1.hour
    #   title                      = "Free Event Number #{n}"
    #   location                   = "Location ##{n}"
    #   description                = "Made using Faker gem"
    #   Event.create!(:category    => category,
    #                 :start_date  => start_date,
    #                 :start_time  => start_time,
    #                 :end_date    => end_date,
    #                 :end_time    => end_time,
    #                 :title       => title,
    #                 :location    => location,
    #                 :description => description)
    # end #50.times
    # 50.times do |n|
    #   category                   = "Cheap"
    #   start_date                 = Date.today
    #   start_time                 = Time.now
    #   end_date                   = Date.today
    #   end_time                   = Time.now + 1.hour
    #   title                      = "Free Event Number #{n}"
    #   location                   = "Location ##{n}"
    #   price                      = 10
    #   description                = "Made using Faker gem"
    #   Event.create!(:category    => category,
    #                 :start_date  => start_date,
    #                 :start_time  => start_time,
    #                 :end_date    => end_date,
    #                 :end_time    => end_time,
    #                 :title       => title,
    #                 :location    => location,
    #                 :price       => price,
    #                 :description => description)
    end #50.times
  end #task
end #namespace
