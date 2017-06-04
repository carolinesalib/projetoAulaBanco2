json.extract! localizacao, :id, :geolocalizacao, :endereco_id, :created_at, :updated_at
json.url localizacao_url(localizacao, format: :json)
