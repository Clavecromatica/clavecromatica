class CreateVentas < ActiveRecord::Migration
  def change
    create_table :ventas do |t|
      t.date :fecha
      t.decimal :descuento
      t.reference :cliente
      t.reference :disco
      t.reference :cancion

      t.timestamps
    end
  end
end
