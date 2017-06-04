class CreatePets < ActiveRecord::Migration[5.0]
  def change
    create_table :pets do |t|
      t.integer :situacao
      t.string :raca
      t.string :porte
      t.string :observacao

      t.timestamps
    end
  end
end
