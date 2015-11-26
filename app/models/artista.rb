class Artista < ActiveRecord::Base
  mount_uploader :imagen, ImagenUploader
  
  has_many :discos
end
