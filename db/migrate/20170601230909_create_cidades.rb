class CreateCidades < ActiveRecord::Migration[5.0]
  def change
    create_table :cidades do |t|
      t.string :nome
      t.references :estado, foreign_key: true

      t.timestamps
    end
  end
end
