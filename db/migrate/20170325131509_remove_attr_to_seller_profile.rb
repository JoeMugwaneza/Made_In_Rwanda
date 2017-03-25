class RemoveAttrToSellerProfile < ActiveRecord::Migration[5.0]
  def change
    remove_column :seller_profiles, :image_url, :string
  end
end
