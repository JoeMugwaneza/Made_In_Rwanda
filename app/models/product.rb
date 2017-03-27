class Product < ApplicationRecord
  has_many :orders, through: :carted_products
  # has_many :category_products
  # has_many :categories, through: :category_products
  belongs_to :category, optional: true
  has_many :carted_products
  has_many :orders, through: :carted_products
  belongs_to :user , optional: true

  validates :price, numericality: {greater_than: 0}
  validates :name, presence: true 
  validates :description, presence: true

  belongs_to :seller_profile, optional: true
  
  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

  validates :image, attachment_presence: true
  validates_with AttachmentPresenceValidator, attributes: :image
  validates_with AttachmentSizeValidator, attributes: :image, less_than: 2.megabytes


  def tax
    price * 0.09
  end
end
