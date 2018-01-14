class ChangeColumnInReviews < ActiveRecord::Migration[5.1]
  def change
    change_column :reviews, :text, :text
    add_column :reviews, :status, :boolean
  end
end
