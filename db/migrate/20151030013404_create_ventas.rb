class CreateVentas < ActiveRecord::Migration
  def change
    create_table :ventas do |t|
      t.date :fecha
      t.decimal :descuento
      t.references :cliente
      t.references :disco
      t.references :cancion

      t.timestamps
    end
  end
end
