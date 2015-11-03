class AddGeneroToDiscos < ActiveRecord::Migration
  def change
    add_reference :discos, :genero, index: true
  end
end
