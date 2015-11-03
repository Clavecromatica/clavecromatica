class CreateCanciones < ActiveRecord::Migration
  def change
    create_table :canciones do |t|
      t.String :nombre
      t.int :duracion
      t.decimal :precio
      t.reference :disco

      t.timestamps
    end
  end
end
