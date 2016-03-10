class AddFieldToSchedules < ActiveRecord::Migration
  def change
    add_reference :schedules, :teacher, index: true, foreign_key: true
  end
end
