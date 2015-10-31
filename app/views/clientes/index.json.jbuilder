json.array!(@clientes) do |cliente|
  json.extract! cliente, :id, :nombre, :apellido_paterno, :apellido_materno, :direccion, :password, :email
  json.url cliente_url(cliente, format: :json)
end
