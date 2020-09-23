class CreateTvshows < ActiveRecord::Migration[6.0]
  def change
    create_table :tvshows do |t|
      t.string :title
      t.datetime :showtime
      t.references :channal, foreign_key: true
      
      t.timestamps
    end
  end
end
