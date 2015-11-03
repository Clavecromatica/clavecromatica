json.array!(@costumers) do |costumer|
  json.extract! costumer, :id, :nombre, :apellido_paterno, :apellido_materno, :direccion, :password, :email
  json.url costumer_url(costumer, format: :json)
end
