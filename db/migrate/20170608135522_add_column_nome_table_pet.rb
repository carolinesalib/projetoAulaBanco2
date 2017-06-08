class AddColumnNomeTablePet < ActiveRecord::Migration[5.0]
  def change
    add_column :pets, :nome, :string
  end
end
