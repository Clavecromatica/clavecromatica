json.array!(@discograficas) do |discografica|
  json.extract! discografica, :id, :nombre, :descripcion
  json.url discografica_url(discografica, format: :json)
end
