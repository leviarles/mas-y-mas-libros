class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :isbn
      t.string :nombrelibro
      t.string :autor
      t.string :editorial
      t.float :precio
      t.references :category, index: true
      t.references :provider, index: true

      t.timestamps
    end
  end
end
