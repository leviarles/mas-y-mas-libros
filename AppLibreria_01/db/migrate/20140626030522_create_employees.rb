class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :nombre
      t.string :rfc
      t.string :direccion
      t.string :cargo
      t.string :telefono
      t.integer :user_id

      t.timestamps
    end
  end
end
