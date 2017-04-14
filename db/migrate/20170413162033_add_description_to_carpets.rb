class AddDescriptionToCarpets < ActiveRecord::Migration
  def change
    add_column :carpets, :description, :text
  end
end
