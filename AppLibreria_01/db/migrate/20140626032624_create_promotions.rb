class CreatePromotions < ActiveRecord::Migration
  def change
    create_table :promotions do |t|
      t.string :tipopromocion
      t.string :medio
      t.string :descripcion
      t.references :employee, index: true
      t.references :customer, index: true

      t.timestamps
    end
  end
end
