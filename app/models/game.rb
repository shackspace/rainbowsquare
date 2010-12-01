class Game < ActiveRecord::Base
  has_many :entries, :dependent => :restrict
  has_many :players, :through => :entries
end
