class AddGenreToFilms < ActiveRecord::Migration[5.0]
  def change
    add_column :films, :genre, :string
  end
end
