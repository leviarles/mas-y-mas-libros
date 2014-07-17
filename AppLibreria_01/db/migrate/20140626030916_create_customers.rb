class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :nombre
      t.string :direcion
      t.string :telefono
      t.string :rfc

      t.timestamps
    end
  end
end
