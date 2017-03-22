class RenameSellerProfileAttr < ActiveRecord::Migration[5.0]
  def change
    remove_column :seller_profiles, :password_digest, :string
    rename_column :seller_profiles, :name, :company_name
    rename_column :seller_profiles, :email, :company_email
    rename_column :users, :name, :first_name
    add_column :users, :last_name, :string
    add_column :seller_profiles, :street_code, :string
  end
end
