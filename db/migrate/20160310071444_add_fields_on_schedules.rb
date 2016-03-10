class AddFieldsOnSchedules < ActiveRecord::Migration
  def change
    add_column :schedules, :date, :date
    add_column :schedules, :starts_at, :datetime
    add_column :schedules, :ends_at, :datetime
    add_column :schedules, :daterange, :string
  end
end
