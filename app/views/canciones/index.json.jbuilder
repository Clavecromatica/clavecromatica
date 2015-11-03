json.array!(@canciones) do |cancion|
  json.extract! cancion, :id, :nombre, :duracion, :precio, :disco
  json.url cancion_url(cancion, format: :json)
end
