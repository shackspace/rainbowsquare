class DeviseCreatePlayers < ActiveRecord::Migration
  def self.up
    change_table :players do |t|
      t.remove :email
      t.database_authenticatable :null => false
      t.recoverable
      t.rememberable
      t.trackable
      t.token_authenticatable

      # t.confirmable
      # t.lockable :lock_strategy => :failed_attempts, :unlock_strategy => :both
    end

    add_index :players, :email,                :unique => true
    add_index :players, :reset_password_token, :unique => true
    # add_index :players, :confirmation_token,   :unique => true
    # add_index :players, :unlock_token,         :unique => true
  end

  def self.down
    change_table :players do |t|
      t.string :email
      t.remove :encrypted_password, :password_salt,
        :reset_password_token, :remember_token,
        :remember_created_at, :sign_in_count,
        :current_sign_in_at, :last_sign_in_at,
        :current_sign_in_ip, :last_sign_in_ip
    end
  end
end
