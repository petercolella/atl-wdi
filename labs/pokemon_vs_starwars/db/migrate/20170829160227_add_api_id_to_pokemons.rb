class AddApiIdToPokemons < ActiveRecord::Migration[5.0]
  def change
    add_column :pokemons, :api_id, :integer
  end
end
