class AddCategoryToCarpets < ActiveRecord::Migration
  def change
    add_column :carpets, :category, :string
  end
end
