class CreateProjects < ActiveRecord::Migration[7.1]
  def change
    create_table :projects do |t|
      t.references :user_profile, null: false, foreign_key: true
      t.string :title
      t.text :description
      t.string :tech_stack

      t.timestamps
    end
  end
end
