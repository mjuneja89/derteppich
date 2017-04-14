class AddPhotoToCarpets < ActiveRecord::Migration
  def change
    add_column :carpets, :photo, :string
  end
end
