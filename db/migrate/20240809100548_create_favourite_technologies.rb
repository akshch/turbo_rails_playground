class CreateFavouriteTechnologies < ActiveRecord::Migration[7.1]
  def change
    create_table :favourite_technologies do |t|
      t.references :technology, null: false, foreign_key: true

      t.timestamps
    end
  end
end
