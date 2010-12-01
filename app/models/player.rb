class Player < ActiveRecord::Base
  has_many :entries, :dependent => :restrict
  has_many :games, :through => :entries
end
