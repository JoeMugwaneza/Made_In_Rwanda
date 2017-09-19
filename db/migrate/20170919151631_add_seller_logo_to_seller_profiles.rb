class AddSellerLogoToSellerProfiles < ActiveRecord::Migration[5.0]
  def change
    add_column :seller_profiles, :seller_logo, :string
  end
end
