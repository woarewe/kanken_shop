class AddNameToCalls < ActiveRecord::Migration[5.1]
  def change
    add_column :calls, :name, :stringк
  end
end
