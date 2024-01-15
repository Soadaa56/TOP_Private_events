class ChangeTimeToDateInEvents < ActiveRecord::Migration[7.1]
  def up
    change_column :events, :date, 'date USING date::date'
  end

  def down
    change_column :events, :date, :time
  end
end
