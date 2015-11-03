class AddImagenToDiscos < ActiveRecord::Migration
  def change
    add_column :discos, :portada_delantera, :string
    add_column :discos, :portada_trasera, :string
  end
end
