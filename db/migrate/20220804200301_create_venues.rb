class CreateVenues < ActiveRecord::Migration[7.0]
  def change
    create_table :venues do |t|
      t.string :name
      t.string :postcode
      t.string :street_address
      t.string :url
      t.timestamps
    end
  end
end
