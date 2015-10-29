class CreateGeneros < ActiveRecord::Migration
  def change
    create_table :generos do |t|
      t.string :nombre
      t.text :descripcion

      t.timestamps
    end
  end
end
