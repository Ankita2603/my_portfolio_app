class CreateEducations < ActiveRecord::Migration[7.1]
  def change
    create_table :educations do |t|
      t.references :user_profile, null: false, foreign_key: true
      t.string :degree
      t.string :institution
      t.integer :start_year
      t.integer :end_year

      t.timestamps
    end
  end
end
