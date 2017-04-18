class Item < ApplicationRecord
  belongs_to :user

  extend FriendlyId
  friendly_id :title, use: :slugged

  validates :title, presence: true
  validates :description, presence: true

  has_attached_file :image,  styles: { medium: '300x300>', thumb: '150x150#' }
  validates_attachment_content_type :image, content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"]
end
