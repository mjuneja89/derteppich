class AddPriorityIdToCarpets < ActiveRecord::Migration
  def change
    add_column :carpets, :priority_id, :integer
  end
end
