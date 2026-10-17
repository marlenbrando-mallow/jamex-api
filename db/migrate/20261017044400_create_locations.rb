class CreateLocations < ActiveRecord::Migration[8.1]
  def change
    create_table :locations do |t|
      t.string :code
      t.string :name
      t.string :contact_person
      t.string :phone
      t.text :address
      t.integer :service_frequency_months
      t.integer :quantity
      t.date :last_service_date
      t.date :next_due_date
      t.integer :status

      t.timestamps
    end
    add_index :locations, :code
  end
end
