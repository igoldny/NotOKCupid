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

class User < ActiveRecord::Base

  validates :username, :password_digest, :session_token, :email, presence: true
  validates :username, :email, :session_token, uniqueness: true
  validates :password, length: { minimum: 6, allow_nil: true }
  validates :age, inclusion: { in: 18..150 }
  validates :location, length: { is: 5 }

  attr_reader :password

  after_initialize :ensure_session_token

  has_attached_file :image, default_url: "default_prof_pic.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

  has_many :messages, {
    class_name: :Message,
    primary_key: :id,
    foreign_key: :author_id
  }

  has_many :started_conversations, {
    class_name: :Conversation,
    primary_key: :id,
    foreign_key: :user_one_id
  }

  has_many :received_conversations, {
    class_name: :Conversation,
    primary_key: :id,
    foreign_key: :user_two_id
  }

  has_many :responses

  has_many :questions

  def self.find_by_credentials(username, password)
    user = User.find_by(username: username)

    user && user.is_password?(password) ? user : nil
  end

  def password=(password)
    @password = password
    self.password_digest = BCrypt::Password.create(password)
  end

  def is_password?(password)
    BCrypt::Password.new(self.password_digest).is_password?(password)
  end

  def reset_session_token!
    self.session_token = SecureRandom::urlsafe_base64(16)
    self.save!
    self.session_token
  end

  private

  def ensure_session_token
    self.session_token ||= SecureRandom::urlsafe_base64(16)
  end

end
