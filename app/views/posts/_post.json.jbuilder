json.extract! post, :id, :titulo, :descricao, :localizacao_id, :created_at, :updated_at
json.url post_url(post, format: :json)
