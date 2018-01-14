class AddCityToReviews < ActiveRecord::Migration[5.1]
  def change
    add_column :reviews, :city, :string
  end
end
