class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.string :text

      t.timestamps
    end
  end
end
