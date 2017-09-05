class AddSynopsisToFilms < ActiveRecord::Migration[5.0]
  def change
    add_column :films, :synopsis, :text
  end
end
