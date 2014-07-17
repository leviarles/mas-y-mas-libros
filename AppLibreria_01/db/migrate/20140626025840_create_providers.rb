class CreateProviders < ActiveRecord::Migration
  def change
    create_table :providers do |t|
      t.string :razonsocial
      t.string :direccion
      t.string :telefono
      t.string :correo

      t.timestamps
    end
  end
end
