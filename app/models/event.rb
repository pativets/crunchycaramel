class Event < ActiveRecord::Base

	attr_accessible :description, :event_title, :event_type, :occurence
	
	belongs_to:user
	
	validates :description, :presence => true, :length => {:maximum => 140}
	validates :user_id, :presence => true
	validates :event_title, :presence => true, :length => {:maximum => 50}
	validates :event_type, :presence => true
	validates :occurence, :presence => true

  occurence = ['one-time', 'monthly']

end
