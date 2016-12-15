# == Schema Information
#
# Table name: skips
#
#  id          :integer          not null, primary key
#  user_id     :integer          not null
#  question_id :integer          not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Skip < ActiveRecord::Base
end
