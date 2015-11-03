class CreateClientes < ActiveRecord::Migration
  def change
    create_table :clientes do |t|
      t.String :nombre
      t.String :apellido_paterno
      t.String :apellido_materno
      t.String :direccion
      t.text :password
      t.text :email

      t.timestamps
    end
  end
end
