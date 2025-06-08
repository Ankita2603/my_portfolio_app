class CreateUserProfiles < ActiveRecord::Migration[7.1]
  def change
    create_table :user_profiles do |t|
      t.string :name
      t.string :title
      t.text :about
      t.string :resume

      t.timestamps
    end
  end
end
