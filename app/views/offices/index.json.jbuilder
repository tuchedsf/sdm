json.array!(@offices) do |office|
  json.extract! office, :id, :system_id, :identificador, :sipro, :siged, :dataRecebimento, :ocorrencia
  json.url office_url(office, format: :json)
end
