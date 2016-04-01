class CreateFoods < ActiveRecord::Migration
  def change
    create_table :foods do |t|
      t.string :name
      t.string :ingedients
      t.string :tag
      t.string :image_url
      t.references :restaurant, index: true, foreign_key: true
    end
  end
end
