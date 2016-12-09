class Conversation < ActiveRecord::Base

  validates :user_one_id, :user_two_id, presence: true

  has_many :messages, {
    class_name: :Message,
    primary_key: :id,
    foreign_key: :thread_id
  }

  belongs_to :started_user, {
    class_name: :User,
    primary_key: :id,
    foreign_key: :user_one_id
  }

  belongs_to :received_user, {
    class_name: :User,
    primary_key: :id,
    foreign_key: :user_two_id
  }
end
