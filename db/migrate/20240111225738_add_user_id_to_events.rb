class AddUserIdToEvents < ActiveRecord::Migration[7.1]
  def change
    add_column :events, :user_id, :integer
    add_foreign_key :events, :users
  end
end
