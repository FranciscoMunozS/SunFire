class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :code
      t.string :name
      t.date :income_date
      t.date :dispatch_date
      t.string :bill
      t.string :provider
      t.integer :unit_value
      t.integer :quantity
      t.integer :iva_value
      t.integer :total
      t.string :ubication

      t.timestamps
    end
  end
end
