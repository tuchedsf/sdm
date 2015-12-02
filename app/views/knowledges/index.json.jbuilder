json.array!(@knowledges) do |knowledge|
  json.extract! knowledge, :id, :system_id, :user_id, :titulo, :descricao
  json.url knowledge_url(knowledge, format: :json)
end
