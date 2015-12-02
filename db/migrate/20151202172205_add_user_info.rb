class AddUserInfo < ActiveRecord::Migration
  def change
    add_column :users, :direccion, :string, :default => "Dirección"
    add_column :users, :nombre, :string, :default => "Nombre completo"
    add_column :users, :codigo_postal, :integer, :default => 11111
  end
end
