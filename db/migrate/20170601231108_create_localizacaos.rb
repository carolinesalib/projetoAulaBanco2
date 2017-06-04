class CreateLocalizacaos < ActiveRecord::Migration[5.0]
  def change
    create_table :localizacaos do |t|
      t.string :geolocalizacao
      t.references :endereco, foreign_key: true

      t.timestamps
    end
  end
end
