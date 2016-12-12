# == Schema Information
#
# Table name: users
#
#  id                 :integer          not null, primary key
#  username           :string           not null
#  email              :string           not null
#  password_digest    :string           not null
#  session_token      :string           not null
#  gender             :string           not null
#  sexuality          :string           not null
#  age                :integer          not null
#  location           :string           not null
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  summary            :text
#  doing              :text
#  good_at            :text
#  favorites          :text
#  thinking           :text
#  friday             :text
#  message_if         :text
#  prof_pic_id        :integer
#  image_file_name    :string
#  image_content_type :string
#  image_file_size    :integer
#  image_updated_at   :datetime
#

require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
