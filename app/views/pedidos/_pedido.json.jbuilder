json.extract! pedido, :id, :descricao, :finalizado, :aprovado, :client_id, :created_at, :updated_at
json.url pedido_url(pedido, format: :json)
