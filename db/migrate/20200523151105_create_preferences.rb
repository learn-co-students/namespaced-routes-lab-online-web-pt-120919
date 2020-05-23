class CreatePreferences < ActiveRecord::Migration[5.0]
  def change
    create_table :preferences do |t|
      t.boolean :allow_songs
      t.boolean :allow_artists
    end
  end
end
