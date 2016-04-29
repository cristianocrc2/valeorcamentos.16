json.array!(@subcategoria) do |subcategorium|
  json.extract! subcategorium, :id, :subcategoria, :ativo, :categoria_id
  json.url subcategorium_url(subcategorium, format: :json)
end
