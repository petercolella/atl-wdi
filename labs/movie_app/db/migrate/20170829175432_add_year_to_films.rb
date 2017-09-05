class AddYearToFilms < ActiveRecord::Migration[5.0]
  def change
    add_column :films, :year, :string
  end
end
