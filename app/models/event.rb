# == Schema Information
# Schema version: 20110222195224
#
# Table name: events
#
#  id          :integer         primary key
#  description :text
#  event_title :string(255)
#  user_id     :integer
#  event_type  :string(255)
#  price       :integer
#  occurence   :string(255)
#  startdate   :date
#  starttime   :time
#  enddate     :date
#  endtime     :time
#  location    :string(255)
#  created_at  :timestamp
#  updated_at  :timestamp
#

class Event < ActiveRecord::Base

	attr_accessible :description, :event_title, :event_type, :occurence, 
	                :startdate, :starttime, :location, :enddate, :endtime
	
	belongs_to:user
	
	validates :description, :presence => true,
	                        :length => {:maximum => 140}
	validates :user_id,     :presence => true
	validates :event_title, :presence => true,
	                        :length => {:maximum => 50}
	validates :event_type,  :presence => true
	validates :occurence,   :presence => true
	validates :event_type,  :presence => true
	validates :startdate,   :presence => true
	validates :starttime,   :presence => true
	validates :enddate,     :presence => true
	validates :endtime,     :presence => true
	validates :location,    :presence => true

  OCCURENCE = ['One-Time', 'Daily', 'Weekly', 'Monthly', 'Annual']
  EVENT_TYPE = ['Free', 'Cheap']

end
