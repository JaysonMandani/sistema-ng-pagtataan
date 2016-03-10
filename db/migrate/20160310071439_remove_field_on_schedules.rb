class RemoveFieldOnSchedules < ActiveRecord::Migration
  def change
    remove_column :schedules, :date
  end
end
