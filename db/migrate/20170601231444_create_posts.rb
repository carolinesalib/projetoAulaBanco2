class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.string :titulo
      t.string :descricao
      t.references :localizacao, foreign_key: true
      t.references :usuario, foreign_key: true
      t.references :pet, foreign_key: true

      t.timestamps
    end
  end
end
