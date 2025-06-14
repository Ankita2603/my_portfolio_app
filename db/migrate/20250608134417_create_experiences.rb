class CreateExperiences < ActiveRecord::Migration[7.1]
  def change
    create_table :experiences do |t|
      t.references :user_profile, null: false, foreign_key: true
      t.string :company
      t.string :role
      t.date :start_date
      t.date :end_date
      t.text :description

      t.timestamps
    end
  end
end
