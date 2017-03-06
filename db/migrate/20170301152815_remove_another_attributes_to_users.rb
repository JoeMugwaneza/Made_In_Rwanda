class RemoveAnotherAttributesToUsers < ActiveRecord::Migration[5.0]
  def change
    remove_column :users, :user_name, :string
    add_column :users, :name, :string
  end
end
