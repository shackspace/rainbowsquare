class CreatePlayers < ActiveRecord::Migration
  def self.up
    create_table :players do |t|
      t.string :email
      t.string :twitter_id

      t.timestamps
    end
  end

  def self.down
    drop_table :players
  end
end
