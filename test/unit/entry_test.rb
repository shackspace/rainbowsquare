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

require 'test_helper'

class EntryTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
end
