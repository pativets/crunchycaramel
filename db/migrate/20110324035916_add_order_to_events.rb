class AddOrderToEvents < ActiveRecord::Migration
  def self.up
    add_column :events, :order, :string
  end

  def self.down
    remove_column :events, :order
  end
end
