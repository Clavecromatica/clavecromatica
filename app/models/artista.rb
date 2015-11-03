class Artista < ActiveRecord::Base
  mount_uploader :imagen, ImagenUploader
end
