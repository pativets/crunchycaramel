class Event < ActiveRecord::Base

	attr_accessible :description, :event_title, :event_type, :occurence, :startdate, :starttime, :location, :enddate, :endtime
	
	belongs_to:user
	
	validates :event_title, :presence => true, :length => {:maximum => 50}
	validates :event_type, :presence => true
	validates :occurence, :presence => true
	validates :event_type, :presence => true
	validates :startdate, :presence => true
	validates :starttime, :presence => true
	validates :enddate, :presence => true
	validates :endtime, :presence => true
	validates :location, :presence => true
	validates :description, :presence => true, :length => {:maximum => 140}
	validates :user_id, :presence => true

OCCURENCE = ['One-Time', 'Daily', 'Weekly', 'Monthly', 'Annual']
EVENT_TYPE = ['Free', 'Cheap']

end
