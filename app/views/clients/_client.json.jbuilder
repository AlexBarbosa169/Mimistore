json.extract! client, :id, :nome, :apelido, :nascimento, :cpf, :created_at, :updated_at
json.url client_url(client, format: :json)
