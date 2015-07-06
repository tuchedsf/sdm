json.array!(@releases) do |release|
  json.extract! release, :id, :system_id,:versao,:descricao, :dt_implantacao
  json.url category_url(release, format: :json)
end
