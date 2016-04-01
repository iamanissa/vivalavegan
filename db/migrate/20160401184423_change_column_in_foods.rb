class ChangeColumnInFoods < ActiveRecord::Migration
  def change
    rename_column :foods, :ingedients, :ingredients
    rename_column :foods, :image_url, :photo_url
  end
end
