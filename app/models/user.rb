class User < ApplicationRecord
  has_secure_password
  has_many :orders
  has_many :posts
  has_one :seller_profile
  has_many :products, through: :seller_profile
  has_many :products, through: :carted_products

  before_create { generate_token(:auth_token)}

  def send_password_reset
    generate_token(:password_reset_token)
    self.password_reset_sent_at = Time.zone.now
    save!
    UsermailerMailer.password_reset(self).deliver_now
  end

  def generate_token(column)
    begin
      self[column] = SecureRandom.urlsafe_base64
    end while User.exists?(column => self[column])
  end
end
