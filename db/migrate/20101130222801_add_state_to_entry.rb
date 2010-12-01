class AddStateToEntry < ActiveRecord::Migration
  def self.up
    change_table :entries do |t|
      t.string :state, :default => "waiting"
      t.remove :image_filename
    end
  end

  def self.down
    change_table :entries do |t|
      t.remove :state
      t.string :image_filename
    end  
  end
end
