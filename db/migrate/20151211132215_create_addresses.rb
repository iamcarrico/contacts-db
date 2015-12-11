class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.integer :household_id
      t.string :business_name
      t.string :address1
      t.string :address2
      t.string :city
      t.string :state
      t.column :zip, 'char(5)'
      t.column :zip4, 'char(4)'
      t.string :country
      t.text :international
      t.boolean :usps_confirmed
      t.timestamps null: false
    end
  end
end
