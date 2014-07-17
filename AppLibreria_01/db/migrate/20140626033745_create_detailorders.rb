class CreateDetailorders < ActiveRecord::Migration
  def change
    create_table :detailorders do |t|
      t.references :book, index: true
      t.integer :cantidad
      t.references :sale, index: true

      t.timestamps
    end
  end
end
