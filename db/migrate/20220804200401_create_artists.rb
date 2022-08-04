class CreateArtists < ActiveRecord::Migration[7.0]
  def change
    create_table :artists do |t|
      t.string :name
      t.string :spotify_url
      t.string :artist_site_url
      t.references :genre, foreign_key: true
      t.timestamps
    end
  end
end
