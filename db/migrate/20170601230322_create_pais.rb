class CreatePais < ActiveRecord::Migration[5.0]
  def change
    create_table :pais do |t|
      t.string :nome

      t.timestamps
    end
  end
end
