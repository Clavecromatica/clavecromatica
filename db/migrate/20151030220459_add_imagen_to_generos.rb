class AddImagenToGeneros < ActiveRecord::Migration
  def change
    add_column :generos, :imagen, :string
  end
end
