json.array!(@discos) do |disco|
  json.extract! disco, :id, :nombre, :publicacion, :precio, :artista_id, :discografica_id
  json.url disco_url(disco, format: :json)
end
