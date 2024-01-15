class RenameNewDateToDateInEvents < ActiveRecord::Migration[7.1]
  def change
    rename_column :events, :new_date, :date
  end
end
