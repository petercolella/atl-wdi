class AddTitleToFilms < ActiveRecord::Migration[5.0]
  def change
    add_column :films, :title, :string
  end
end
