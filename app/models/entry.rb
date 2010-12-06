# == Schema Information
#
# Table name: entries
#
#  id                 :integer(4)      not null, primary key
#  name               :string(255)
#  description        :text
#  created_at         :datetime
#  updated_at         :datetime
#  photo_file_name    :string(255)
#  photo_content_type :string(255)
#  photo_file_size    :integer(4)
#  game_id            :integer(4)      not null
#  player_id          :integer(4)      not null
#  state              :string(255)     default("waiting")
#

class Entry < ActiveRecord::Base
  has_one :player
  has_attached_file :photo
  
  attr_protected :photo_file_name, :photo_content_type, :photo_size
end
