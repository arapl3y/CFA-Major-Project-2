class Item < ApplicationRecord
  belongs_to :user
  has_many :item_requests, dependent: :destroy
  # users who has requested this item
  has_many :requesters, through: :item_requests, source: :user

  extend FriendlyId
  friendly_id :title, use: :slugged

  validates :title, presence: true
  validates :description, presence: true

  has_attached_file :document
  # Permitted file types
  validates_attachment :document, :content_type => {:content_type => %w(image/jpeg image/jpg image/png application/pdf application/msword application/vnd.openxmlformats-officedocument.wordprocessingml.document audio/mpeg audio/mp3 audio/x-m4a)}
end
