json.extract! product, :id, :nome, :descricao, :valor, :quantidade, :created_at, :updated_at
json.url product_url(product, format: :json)
