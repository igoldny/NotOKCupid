class Message < ActiveRecord::Base

  validates :author_id, :thread_id, :body, presence: true

  belongs_to :author, {
    class_name: :User,
    primary_key: :id,
    foreign_key: :author_id
  }

  belongs_to :conversation, {
    class_name: :Conversation,
    primary_key: :id,
    foreign_key: :thread_id
  }
end
