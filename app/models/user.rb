class User < ApplicationRecord
  has_secure_password
  has_many :orders
  has_many :posts
  has_one :seller_profile
  has_many :products, through: :seller_profile
end
