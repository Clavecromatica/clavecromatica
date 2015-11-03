class CreateCostumers < ActiveRecord::Migration
  def change
    create_table :costumers do |t|
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
