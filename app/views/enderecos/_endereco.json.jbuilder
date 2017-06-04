json.extract! endereco, :id, :logradouro, :cep, :bairro_id, :created_at, :updated_at
json.url endereco_url(endereco, format: :json)
