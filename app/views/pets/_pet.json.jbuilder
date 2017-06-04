json.extract! pet, :id, :situacao, :raca, :porte, :observacao, :created_at, :updated_at
json.url pet_url(pet, format: :json)
