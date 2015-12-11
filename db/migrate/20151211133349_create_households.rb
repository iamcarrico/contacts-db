class CreateHouseholds < ActiveRecord::Migration
  def change
    create_table :households do |t|
      t.string :label
      t.integer :head_of_house

      t.timestamps null: false
    end
  end
end
