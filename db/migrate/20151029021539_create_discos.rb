class CreateDiscos < ActiveRecord::Migration
  def change
    create_table :discos do |t|
      t.string :nombre
      t.date :publicacion
      t.decimal :precio
      t.references :artista, index: true
      t.references :discografica, index: true

      t.timestamps
    end
  end
end
