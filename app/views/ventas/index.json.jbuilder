json.array!(@ventas) do |venta|
  json.extract! venta, :id, :fecha, :descuento, :cliente, :disco, :cancion
  json.url venta_url(venta, format: :json)
end
