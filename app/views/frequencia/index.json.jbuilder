json.array!(@frequencia) do |frequencium|
  json.extract! frequencium, :id, :frequencia, :ativo, :subcategoria_id
  json.url frequencium_url(frequencium, format: :json)
end
