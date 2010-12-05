# == Schema Information
#
# Table name: games
#
#  id          :integer(4)      not null, primary key
#  name        :string(255)
#  description :text
#  created_at  :datetime
#  updated_at  :datetime
#

class Game < ActiveRecord::Base
  has_many :entries, :dependent => :restrict
  has_many :players, :through => :entries
end
