# == Schema Information
#
# Table name: players
#
#  id                   :integer(4)      not null, primary key
#  twitter_id           :string(255)
#  created_at           :datetime
#  updated_at           :datetime
#  email                :string(255)     default(""), not null
#  encrypted_password   :string(128)     default(""), not null
#  password_salt        :string(255)     default(""), not null
#  reset_password_token :string(255)
#  remember_token       :string(255)
#  remember_created_at  :datetime
#  sign_in_count        :integer(4)      default(0)
#  current_sign_in_at   :datetime
#  last_sign_in_at      :datetime
#  current_sign_in_ip   :string(255)
#  last_sign_in_ip      :string(255)
#  authentication_token :string(255)
#  admin                :boolean(1)
#

require 'test_helper'

class PlayerTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
end
