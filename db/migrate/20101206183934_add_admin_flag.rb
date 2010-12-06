class AddAdminFlag < ActiveRecord::Migration
  def self.up
    change_table :players do |t|
      t.boolean :admin, :default => false
    end
  end

  def self.down
    change_table :players do |t|
      t.remove :admin
    end
  end
end
