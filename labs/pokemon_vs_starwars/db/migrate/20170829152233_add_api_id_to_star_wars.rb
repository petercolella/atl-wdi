class AddApiIdToStarWars < ActiveRecord::Migration[5.0]
  def change
    add_column :star_wars, :api_id, :integer
  end
end
