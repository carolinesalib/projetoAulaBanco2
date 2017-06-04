class CreateUsuarios < ActiveRecord::Migration[5.0]
  def change
    create_table :usuarios do |t|
      t.string :nome
      t.string :cpf
      t.string :telefone
      t.string :email
      t.date :data_nascimento
      t.string :login
      t.string :senha
      t.boolean :admin

      t.timestamps
    end
  end
end
