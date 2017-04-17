class User < ApplicationRecord
  validates :username, presence: true
  validates :password, presence: true

  devise :database_authenticatable, :registerable,
         :rememberable, :trackable, :validatable,
         :authentication_keys => [:username]

  has_many :items

  def email_required?
    false
  end

  def email_changed?
    false
  end
end
