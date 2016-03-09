class CreateLessons < ActiveRecord::Migration
  def change
    create_table :lessons do |t|
      t.string :name
      t.string :description
      t.references :teacher, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
