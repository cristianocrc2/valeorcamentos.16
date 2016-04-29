json.array!(@categoria) do |categorium|
  json.extract! categorium, :id, :categoria, :ativo, :nicho_id
  json.url categorium_url(categorium, format: :json)
end
