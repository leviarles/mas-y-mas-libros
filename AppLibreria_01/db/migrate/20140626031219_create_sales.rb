class CreateSales < ActiveRecord::Migration
  def change
    create_table :sales do |t|
      t.date :fechatransaccion
      t.float :total
      t.float :descuento
      t.references :employee, index: true
      t.references :customer, index: true

      t.timestamps
    end
  end
end
