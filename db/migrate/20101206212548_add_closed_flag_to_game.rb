class AddClosedFlagToGame < ActiveRecord::Migration
  def self.up
    change_table :games do |t|
      t.boolean :closed, :default => false, :nullable => false
    end
  end

  def self.down
    change_table :games do |t|
      t.remove :closed
    end
  end
end
