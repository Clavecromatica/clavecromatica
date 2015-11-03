class CreateClientes < ActiveRecord::Migration
  def change
    create_table :clientes do |t|
      t.string :nombre
      t.string :apellido_paterno
      t.string :apellido_materno
      t.string :direccion
      t.text :password
      t.text :email

      t.timestamps
    end
  end
end
