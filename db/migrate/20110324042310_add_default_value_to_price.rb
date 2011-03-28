class AddDefaultValueToPrice < ActiveRecord::Migration
  def self.up
    change_column :events, :price, :integer, :default => 0
  end

  def self.down
    change_column :events, :price, :integer, :default => nil
  end
end
