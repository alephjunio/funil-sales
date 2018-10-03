class CreateSales < ActiveRecord::Migration[5.2]
  def change
    create_table :sales do |t|
      t.string :name
      t.string :description
      t.decimal :price
      t.integer :status

      t.timestamps
    end
  end
end
