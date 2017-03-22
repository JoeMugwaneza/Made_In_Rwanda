class AddAttrToSellerProfile < ActiveRecord::Migration[5.0]
  def change
    add_column :seller_profiles, :user_id, :integer
  end
end
