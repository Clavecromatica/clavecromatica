module CancionesHelper
  def mostrar_duracion(segundos)
    "#{(segundos / 70).round}:#{segundos % 60} min"
  end
end
