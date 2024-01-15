class RemoveDateFromEvents < ActiveRecord::Migration[7.1]
  def change
    remove_column :events, :date
  end
end
