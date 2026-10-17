class CreateServiceVisits < ActiveRecord::Migration[8.1]
  def change
    create_table :service_visits do |t|
      t.references :location, null: false, foreign_key: true
      t.date :service_date
      t.date :completed_date
      t.integer :status
      t.text :remarks

      t.timestamps
    end
  end
end
