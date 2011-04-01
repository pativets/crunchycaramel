# == Schema Information
# Schema version: 20110324042310
#
# Table name: events
#
#  id          :integer         not null, primary key
#  description :text
#  event_title :string(255)
#  user_id     :integer
#  event_type  :string(255)
#  price       :integer         default(0)
#  occurence   :string(255)
#  startdate   :date
#  starttime   :time
#  enddate     :date
#  endtime     :time
#  location    :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#  order       :string(255)
#

class Event < ActiveRecord::Base

	attr_accessible :description, :event_title, :event_type, :price, :occurence, 
	                :startdate, :starttime, :location, :enddate, :endtime
	
	belongs_to :user
	
	# Most recently created
  default_scope :order => 'created_at DESC'
  
  scope :free_only, where(:event_type => 'Free')
  scope :cheap_only, where(:event_type => 'Cheap') 
  
	validates :description, :presence => true,
	                        :length => {:maximum => 140}
	validates :user_id,     :presence => true
	validates :event_title, :presence => true,
	                        :length => {:maximum => 50}
  # validates :occurence,   :presence => true
	validates :event_type,  :presence => true
	validates :startdate,   :presence => true
	validates :starttime,   :presence => true
	validates :enddate,     :presence => true
	validates :endtime,     :presence => true
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
  
  def filter_by_cheap_only
    default_scope :order => 'created_at DESC'
  end
  
end
