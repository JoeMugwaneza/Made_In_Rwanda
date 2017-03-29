class AddUserIdToCartedProductTable < ActiveRecord::Migration[5.0]
  def change
    add_column :carted_products, :user_id, :integer
  end
end
