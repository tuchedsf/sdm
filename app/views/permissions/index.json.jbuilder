json.array!(@systems) do |system|
  json.extract! system, :id, :nome, :responsavel
  json.url system_url(system, format: :json)
end