class CreateArtista < ActiveRecord::Migration
  def change
    create_table :artista do |t|
      t.string :nombre
      t.text :descripcion
      t.date :fecha_origen
      t.string :web

      t.timestamps
    end
  end
end
