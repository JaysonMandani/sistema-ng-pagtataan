class AddFieldsToTeachers < ActiveRecord::Migration
  def change
    add_column :teachers, :name, :string
    add_column :teachers, :nationality, :string
    add_column :teachers, :gender, :string
  end
end
