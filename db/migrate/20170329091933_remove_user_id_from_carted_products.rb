class RemoveUserIdFromCartedProducts < ActiveRecord::Migration[5.0]
  def change
    remove_column :carted_products, :user_id, :integer
  end
end
