require 'faker'

namespace :db do
  desc "Fill the database with sample users"
  task :populate => :environment do
    99.times do |n|
      name = Faker::Name.name
      email = "#{name.split.join}@samplemail.com"
      password = "password"
      User.create!(:name => name, 
                   :email => email,
                   :password => password,
                   :password_confirmation => password)
      
    end #99.times
  end #task
end #namespace