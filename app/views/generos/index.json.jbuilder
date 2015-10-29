json.array!(@generos) do |genero|
  json.extract! genero, :id, :nombre, :descripcion
  json.url genero_url(genero, format: :json)
end
