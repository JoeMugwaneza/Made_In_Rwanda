class SellerProfile < ApplicationRecord
  belongs_to :user, optional: true
  has_many :products
  validates :company_name, presence: true
  validates :company_email, presence: true
  validates :street_code, presence: true
  validates :location, presence: true
  validates :contact, presence: true


  mount_uploader :seller_logo, ProductImageUploader
end
