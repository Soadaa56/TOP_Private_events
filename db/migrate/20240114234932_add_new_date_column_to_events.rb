class AddNewDateColumnToEvents < ActiveRecord::Migration[7.1]
  def change
    add_column :events, :new_date, :date
  end
end
