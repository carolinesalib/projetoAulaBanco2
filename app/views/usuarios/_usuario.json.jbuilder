json.extract! usuario, :id, :nome, :cpf, :telefone, :email, :data_nascimento, :login, :senha, :admin, :created_at, :updated_at
json.url usuario_url(usuario, format: :json)
