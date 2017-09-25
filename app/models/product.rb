class Product < ApplicationRecord
  has_many :orders, through: :carted_products
  has_many :carted_products, dependent: :destroy
  belongs_to :user , optional: true

  has_many :product_images, dependent: :destroy

  has_many :category_products
  has_many :categories, through: :category_products

  validates :price, numericality: {greater_than: 0}
  validates :name, presence: true 
  validates :description, presence: true

  belongs_to :seller_profile, optional: true

  def tax
    price * 0.09
  end
end
