class Like < ActiveRecord::Base

  validates :from_id, :to_id, presence: true
  validates :from_id, uniqueness: { scope: :to_id }

  belongs_to :liker, {
    class_name: :User,
    primary_key: :id,
    foreign_key: :from_id
  }

  belongs_to :likee, {
    class_name: :User,
    primary_key: :id,
    foreign_key: :to_id
  }

end
