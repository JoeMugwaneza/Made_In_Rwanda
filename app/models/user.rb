class User < ApplicationRecord
  has_secure_password
  has_many :products
  has_many :orders
  has_many :posts
  has_many :roles
  has_many :user_categories, through: :roles
end
