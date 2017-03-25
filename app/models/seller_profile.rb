class SellerProfile < ApplicationRecord
  belongs_to :user, optional: true
  has_many :products

  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

  validates :image, attachment_presence: true
  validates_with AttachmentPresenceValidator, attributes: :image
  validates_with AttachmentSizeValidator, attributes: :image, less_than: 2.megabytes
  validates :company_name, presence: true
  validates :company_email, presence: true
  validates :street_code, presence: true
  validates :location, presence: true
  validates :contact, presence: true
end
