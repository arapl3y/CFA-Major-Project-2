class User < ApplicationRecord
  validates :username, presence: true
  validates :password, presence: true


  devise :database_authenticatable, :registerable,
         :rememberable, :trackable, :validatable,
         :authentication_keys => [:username]

  has_many :items, dependent: :destroy
  has_many :item_requests, dependent: :destroy
  belongs_to :plan

  # requested items is an arbitrary name to find items that the user has requested more easily
  has_many :requested_items, through: :item_requests, source: :item

  attr_accessor :stripe_card_token

  def save_with_subscription
    if valid?
      customer = Stripe::Customer.create(description: username, plan: plan_id, source: stripe_card_token)
      self.stripe_customer_token = customer.id
      save!
    end
  end

  def email_required?
    false
  end

  def email_changed?
    false
  end
end
