class ChangeEventTable < ActiveRecord::Migration
  def self.up
    change_table :events do |t|
      t.rename :event_title, :title
      t.rename :event_type, :category
      t.rename :occurence, :occurrence
      t.rename :startdate, :start_date
      t.rename :enddate, :end_date
      t.rename :starttime, :start_time
      t.rename :endtime, :end_time
    end
  end

  def self.down
    change_table :events do |t|
      t.rename :end_time, :endtime
      t.rename :start_time, :starttime
      t.rename :end_date, :enddate
      t.rename :start_date, :startdate
      t.rename :occurrence, :occurence
      t.rename :category, :event_type
      t.rename :title, :event_title
    end
  end
end
