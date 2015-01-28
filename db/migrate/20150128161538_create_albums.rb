class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.string :name

      t.timestamps
    end

    create_table :albums_pictures, id: false do |t|
        t.belongs_to :album, index: true
        t.belongs_to :picture, index: true
    end
  end
end
