class Item < ApplicationRecord
  belongs_to :user
  has_many :item_requests, dependent: :destroy

  # users who has requested this item
  has_many :requesters, through: :item_requests, source: :user

  extend FriendlyId
  friendly_id :title, use: :slugged

  validates :title, presence: true
  validates :description, presence: true

  has_attached_file :document,
    storage: :s3,
    bucket: ENV['S3_BUCKET_NAME'],
    s3_credentials: {
      access_key_id: ENV['AWS_ACCESS_KEY_ID'],
      secret_access_key: ENV['AWS_SECRET_ACCESS_KEY']
    }

  # Permitted file types
  validates_attachment :document, :content_type => {:content_type => %w(image/jpeg image/jpg image/png image/gif image/svg application/pdf application/msword application/vnd.openxmlformats-officedocument.wordprocessingml.document audio/mpeg audio/mp3 audio/x-m4a)}
end
