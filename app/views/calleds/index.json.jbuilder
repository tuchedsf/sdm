json.array!(@calleds) do |called|
  json.extract! called, :id, :system_id, :tipo, :identificador, :descricao, :data
  json.url called_url(called, format: :json)
end
