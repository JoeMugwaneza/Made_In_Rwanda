class User < ApplicationRecord
  has_secure_password
  has_many :orders
  belongs_to :role



  def seller
    role.user_type == "seller"
  end

  def buyer
    role.user_type == "buyer"
  end

  def admin
    role.user_type == "admin"
  end
end
