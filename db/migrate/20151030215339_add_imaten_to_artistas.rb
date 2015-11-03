class AddImatenToArtistas < ActiveRecord::Migration
  def change
    add_column :artistas, :imagen, :string
  end
end
