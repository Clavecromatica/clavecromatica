class CreateCanciones < ActiveRecord::Migration
  def change
    create_table :canciones do |t|
      t.string :nombre
      t.integer :duracion
      t.decimal :precio
      t.references :disco

      t.timestamps
    end
  end
end
