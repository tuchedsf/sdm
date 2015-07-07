json.array!(@clients) do |client|
  json.extract! client, :id, :system_id, :nome, :email, :telefone
  json.url client_url(client, format: :json)
end
