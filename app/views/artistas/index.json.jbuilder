json.array!(@artistas) do |artista|
  json.extract! artista, :id, :nombre, :descripcion, :fecha_origen, :web
  json.url artista_url(artista, format: :json)
end
