class CreateCourses < ActiveRecord::Migration[6.1]
  def change
    create_table :courses do |t|
      t.string :name, null: false
      t.date :release_date, null: false
      t.timestamps
    end
  end
end
# check if release date can be null for TBD
