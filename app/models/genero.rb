class Genero < ActiveRecord::Base
  has_many :discos
  mount_uploader :imagen, ImagenUploader
end
