class User < ApplicationRecord
  has_secure_password
  has_many :orders
  belongs_to :role
end
