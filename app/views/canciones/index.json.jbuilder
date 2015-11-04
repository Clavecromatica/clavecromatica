json.array!(@canciones) do |cancion|
  json.extract! cancion, :id, :nombre, :duracion, :precio, :reference
  json.url cancion_url(cancion, format: :json)
end
