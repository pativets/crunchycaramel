# == Schema Information
# Schema version: 20110405165534
#
# Table name: events
#
#  id          :integer         not null, primary key
#  description :text
#  title       :string(255)
#  user_id     :integer
#  category    :string(255)
#  price       :integer         default(0)
#  occurrence  :string(255)
#  start_date  :date
#  start_time  :time
#  end_date    :date
#  end_time    :time
#  location    :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#  order       :string(255)
#

class Event < ActiveRecord::Base

	attr_accessible :description, :title, :category, :price, :occurrence, 
	                :start_date, :start_time, :location, :end_date, :end_time
	
	belongs_to :user	

  scope :free_only, where(:category => 'Free')
  scope :cheap_only, where(:category => 'Cheap') 
  
	validates :description, :presence => true,
	                        :length => {:maximum => 140}
	validates :user_id,     :presence => true
	validates :title, :presence => true,
	                        :length => {:maximum => 100}
  # validates :occurrence,   :presence => true
	validates :category,    :presence => true
	validates :start_date,  :presence => true
	validates :start_time,  :presence => true
	validates :end_date,    :presence => true
	validates :end_time,    :presence => true
	validates :location,    :presence => true

  # OCCURENCE = [
  #   'One-Time', 
  #   'Daily', 
  #   'Weekly', 
  #   'Monthly', 
  #   'Annual'
  #   ]
  
  EVENT_TYPE = [
    'Free',
    'Cheap'
    ]
  
  ORDERS = {
    'most recently created' => 1, 
    'happening soon' => 2, 
    'cheapest' => 3    
  }
  
  FILTERS = {
    'free only' => 1,
    'cheap only' => 2,
    'both' => 3
  }

end
