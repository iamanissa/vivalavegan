class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :info
      t.string :category
      t.string :photo_url
    end
  end
end
