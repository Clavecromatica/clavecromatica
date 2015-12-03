class Disco < ActiveRecord::Base
  belongs_to :artista
  belongs_to :discografica
  belongs_to :genero
  
  has_many :canciones
  
  ## Configurar los campos para indicar que guardaran imagenes
  mount_uploader :portada_trasera, ImagenUploader
  mount_uploader :portada_delantera, ImagenUploader
  
  def paypal_url(return_path)
    values = {
      business: "prhiroal@gmail.com",
      cmd: "_xclick",
      upload: 1,
      return: "#{Rails.application.secrets.app_host}#{return_path}",
      invoice: id,
      amount: precio,
      item_name: nombre,
      item_number: id,
      quantity: '1'
    }
    "https://www.sandbox.paypal.com/cgi-bin/webscr?" + values.to_query
  end
  
  def multiple_paypal_url(return_path, total)
    values = {
      business: "prhiroal@gmail.com",
      cmd: "_xclick",
      upload: 1,
      return: "https://www.sandbox.paypal.com#{return_path}",
      invoice: 1,
      amount: total,
      item_name: "Multiple discos",
      item_number: 1,
      quantity: '1'
    }
    "https://www.sandbox.paypal.com/cgi-bin/webscr?" + values.to_query
  end
end
