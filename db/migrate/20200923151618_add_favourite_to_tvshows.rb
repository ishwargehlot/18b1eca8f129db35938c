class AddFavouriteToTvshows < ActiveRecord::Migration[6.0]
  def change
    add_column :tvshows, :isfavourite, :boolean ,default: false
  end
end
