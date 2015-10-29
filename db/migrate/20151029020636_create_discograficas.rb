class CreateDiscograficas < ActiveRecord::Migration
  def change
    create_table :discograficas do |t|
      t.string :nombre
      t.text :descripcion

      t.timestamps
    end
  end
end
