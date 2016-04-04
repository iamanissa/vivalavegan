class AddAttributesToBothModels < ActiveRecord::Migration
  def change
    add_column :restaurants, :gotchas, :string
    add_column :foods, :info, :string
  end
end
