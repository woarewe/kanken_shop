class CreateBackpacks < ActiveRecord::Migration[5.1]
  def change
    create_table :backpacks do |t|
      t.boolean :status
      t.string :color
      t.string :image

      t.timestamps
    end
  end
end
