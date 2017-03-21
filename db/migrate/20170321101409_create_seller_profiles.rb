class CreateSellerProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :seller_profiles do |t|
      t.string :name
      t.string :image_url
      t.string :location
      t.string :contact
      t.string :email
      t.string :password_digest

      t.timestamps
    end
  end
end
