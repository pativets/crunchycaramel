class CreateEvents < ActiveRecord::Migration
  def self.up
    create_table :events do |t|
	  t.string :description
	  t.string :event_title
	  t.integer :user_id
	  t.string :event_type
	  t.integer :price
	  t.integer :occurence
	  t.datetime :start
	  t.datetime :end

    t.timestamps
    end
	add_index :events, :user_id
  end

  def self.down
    drop_table :events
  end
end
