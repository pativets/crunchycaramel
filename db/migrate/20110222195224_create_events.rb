class CreateEvents < ActiveRecord::Migration
  def self.up
    create_table :events do |t|
	  t.text :description
	  t.string :event_title
	  t.integer :user_id
	  t.string :event_type
	  t.integer :price
	  t.string :occurence
	  t.date :startdate
	  t.time :starttime
	  t.date :enddate
	  t.time :endtime
	  t.string :location
    t.timestamps
    end
	add_index :events, :user_id
  end

  def self.down
    drop_table :events
  end
end
