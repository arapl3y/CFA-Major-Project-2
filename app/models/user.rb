class User < ApplicationRecord
  validates :username, presence: true
  validates :password, presence: true


  devise :database_authenticatable, :registerable,
         :rememberable, :trackable, :validatable,
         :authentication_keys => [:username]

  has_many :items
  has_many :item_requests
  # requested items is an arbibrary name to find items that the user has requested more easily
  has_many :requested_items, through: :item_requests, source: :item

  def email_required?
    false
  end

  def email_changed?
    false
  end
end
