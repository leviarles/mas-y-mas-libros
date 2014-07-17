class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.date :fechapedido
      t.boolean :enproceso
      t.boolean :cumplida
      t.boolean :entregado
      t.boolean :cancelado
      t.references :employee, index: true
      t.references :customer, index: true

      t.timestamps
    end
  end
end
