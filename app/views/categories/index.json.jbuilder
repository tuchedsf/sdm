json.array!(@categories) do |category|
  json.extract! category, :id, :system.nome, :descricao, :ativo
  json.url category_url(category, format: :json)
end
