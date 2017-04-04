class CreateCarpets < ActiveRecord::Migration
  def change
    create_table :carpets do |t|
      t.string :name
      t.string :design
      t.string :texture 
      t.timestamps null: false
    end
  end
end
