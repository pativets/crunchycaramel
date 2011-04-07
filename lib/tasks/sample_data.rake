require 'faker'

namespace :db do
  desc "Fill the database with sample users"
  task :populate => :environment do
    # 99.times do |n|
    #      name = Faker::Name.name
    #      email = "#{name.split[0]}_#{n}@samplemail.com"
    #      password = "password"
    #      User.create!(:name => name, 
    #                   :email => email,
    #                   :password => password,
    #                   :password_confirmation => password)
    #      
    # end #99.times
    # User.limit(100).each do |user|
    #       user.events.create!(
    #       :category    => "Free",
    #       :start_date  => Date.today,
    #       :start_time  => Time.now,
    #       :end_date    => Date.today,
    #       :end_time    => Time.now + 1.hour,
    #       :title       => Faker::Lorem.sentence,
    #       :location    => Faker::Address.us_state,
    #       :description => Faker::Company.catch_phrase
    #       )
    # end
    # User.limit(100).each do |user|
    #       user.events.create!(
    #       :category    => "Cheap",
    #       :start_date  => Date.today,
    #       :start_time  => Time.now,
    #       :end_date    => Date.today,
    #       :end_time    => Time.now + 1.hour,
    #       :title       => Faker::Lorem.sentence,
    #       :location    => Faker::Address.us_state,
    #       :price       => 5,
    #       :description => Faker::Company.catch_phrase
    #       )
    #     end
  end #task
end #namespace
