class CreateServiceItems < ActiveRecord::Migration[8.1]
  def change
    create_table :service_items do |t|
      t.references :service_visit, null: false, foreign_key: true
      t.string :extinguisher_type
      t.integer :quantity

      t.timestamps
    end
  end
end
