class RenameColumnToUsers < ActiveRecord::Migration[5.0]
  def change
    rename_column :users, :reset_digest, :password_reset_token
  end
end
