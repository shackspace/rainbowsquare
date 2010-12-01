class UseEntryAsCrosstable < ActiveRecord::Migration
  def self.up
    change_table :entries do |t|
      t.integer :game_id, :null => false
      t.integer :player_id, :null => false
    end
  end

  def self.down
    change_table :entries do |t|
      t.remove :game_id, :player_id
    end
  end
end
