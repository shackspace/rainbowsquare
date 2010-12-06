# == Schema Information
#
# Table name: games
#
#  id          :integer(4)      not null, primary key
#  name        :string(255)
#  description :text
#  created_at  :datetime
#  updated_at  :datetime
#  closed      :boolean(1)
#

class Game < ActiveRecord::Base
  has_many :entries, :dependent => :restrict
  has_many :players, :through => :entries
  
  scope :open_games, :conditions => { :closed => false }
end
