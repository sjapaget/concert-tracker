class CreateEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :events do |t|
      t.string :name
      t.string :url
      t.float :tarif
      t.date :date
      t.references :venue, foreign_key: true
      t.references :artist, foreign_key: true
      t.timestamps
    end
  end
end
