class Disco < ActiveRecord::Base
  belongs_to :artista
  belongs_to :discografica
  belongs_to :genero
  
  has_many :canciones
  
  ## Configurar los campos para indicar que guardaran imagenes
  mount_uploader :portada_trasera, ImagenUploader
  mount_uploader :portada_delantera, ImagenUploader
end
