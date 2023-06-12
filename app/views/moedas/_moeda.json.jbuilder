json.extract! moeda, :id, :descricao, :sigla, :imagem, :created_at, :updated_at
json.url moeda_url(moeda, format: :json)
