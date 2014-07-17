class CreateGoals < ActiveRecord::Migration
  def change
    create_table :goals do |t|
      t.string :nombremeta
      t.string :descripcion
      t.boolean :cumplida
      t.references :employee, index: true

      t.timestamps
    end
  end
end
