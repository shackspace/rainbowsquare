# == Schema Information
#
# Table name: players
#
#  id         :integer(4)      not null, primary key
#  email      :string(255)
#  twitter_id :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Player < ActiveRecord::Base
  has_many :entries, :dependent => :restrict
  has_many :games, :through => :entries

  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable, :lockable and :timeoutable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
end
