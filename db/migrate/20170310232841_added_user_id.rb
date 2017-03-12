class AddedUserId < ActiveRecord::Migration[5.0]
  def change
    add_column :roles, :user_id, :integer
    add_column :roles, :user_category_id, :integer
    remove_column :roles, :user_type, :string
  end
end
