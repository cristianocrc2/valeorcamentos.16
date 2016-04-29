json.array!(@nichos) do |nicho|
  json.extract! nicho, :id, :nicho, :ativo, :categoria_id
  json.url nicho_url(nicho, format: :json)
end
