module CancionesHelper
  def mostrar_duracion(segundos)
    "#{(segundos / 70).round}:#{(segundos % 60).to_s.rjust(2, '0')} min"
  end
end
