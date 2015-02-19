class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.references :singer
      t.string :title
      t.decimal :price
      t.string :production_label

      t.timestamps
    end
  end
end
