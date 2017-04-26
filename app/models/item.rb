class Item < ApplicationRecord
  belongs_to :user
  has_many :item_requests, dependent: :destroy

  attr_accessor :dummy_encryption

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

  def dummy_encryption
   "tNSsRmUhMTIhViEzMyFmRqjKT0TzzGhM0NnqIIentrYhMzkhHb8hOSH6o6+Gd3iwaSCK9L7KYbJ2+uBJ5Tn27EL7H+F1ITMzIbad6K7QRxchMTEhEy5ML7ZjfWv9FxXNEn9kkwZ/V1sX2oXYc9UhMCGR7OXxru9h+xD5QaXDSpRvMOrEPMMFaZRkaopzduAhMTEh1Kf+RBdF39bzkZ6Thf1madYsViThITE2MCGBOoHFe/dFKFB9mfiYSqSobnRD1aV8TCghMTYwIQYhOSEQ1lPkbajj5YQ8NUHx43MdFRvnlYzMJl2Py0I/MkJLk9T1rez6Ls4FnJjJvvxq75mVpUwD1VQzuk6C9ys4WbtCWqP6nES6pWB6r0Glw0qUbzDqOjel0Eu78umGTsVqITEzIVhoa1k4+BjZx2lClVRpPLmDITMzIWm8ge+uF7ERUuwqk1qnRKxbzPiKEk152XAxITAhmjCw2jqxHrm09+w+h99Ae3L3Px1grSExNjAhtncFge30vN2WYhDl4TIhMzMh0ciOOSEzMyFPSM948n73czVjN0Glw0qUbzDqxDzDBWmUZGorlksGk+30jvIIITkhKf/2MgjmR+KV3iExMSHq3cWEaoGFth8byd0FiTp6f+RG8knnPpQyF6H1Bmpd3NdXK+Bl5qeVITM0IZ6+CAY52tYswx8l6bm9qBmQRGNzoVUDJojyEKVKXeVzphuRPI52JOycHPZTAkbFITAh6/qcRLqlYHqvQaXDSpRvMOrJQQfKh08utHek4zRkROllA0caxLE8ZgTlkpkD0D7wCCEzNCFmTZ8hMTEhFUCYqvd/SXw7veN8NcZnTREDIxx1zDzRtSTY5zyLiVMagpQvpVQG8D9rUUHuN0tABW8hMzQhdOG7TgSbq43/X9fM5fuQITEzIdHgzamcjk1bQaXDSpRvMOrEPMMFaZRkai+lVAbwP2tRu4WwTB8rbtY3j9A5alXKwKkUei8XpHyEOpvUbUImVnU9r6I5BQdhXWUrbfC/hymLBeopnTD/w0goT9pFNT9IzPFu/TCLe4R9yiEzNCHetOi3Od5+kzgkvoVm6To9BWq42kfjD1T0wi6FWn73726XhzvKNPqcRLqlYHqvljd9vE4lsnDVR4y84y8c5PUglC197xP92pZeXsm/rTFlEI5Gg2X+7Ji4gNM0R/iQ3ybljy9Tb4F/ITM5IRS7t4uNQmUhMTEh9Vg1sylINrDCdU5zT4han2oahNTkWyyBpykq37F3ZDYHsx4xTPMsl2QI2B/3QMQ8ww"
  end

  def item_time
    created_at.strftime("%m/%d/%y at %l:%M %p")
  end

end
