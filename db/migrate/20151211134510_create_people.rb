class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.integer :household_id
      t.string :first_name
      t.string :last_name
      t.integer :spouse
      t.text :notes

      t.timestamps null: false
    end
  end
end
