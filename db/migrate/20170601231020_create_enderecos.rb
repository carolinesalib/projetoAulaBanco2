class CreateEnderecos < ActiveRecord::Migration[5.0]
  def change
    create_table :enderecos do |t|
      t.string :logradouro
      t.string :cep
      t.references :bairro, foreign_key: true

      t.timestamps
    end
  end
end
