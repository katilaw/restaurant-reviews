class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.integer :rating, null: false
      t.string :body, null: false
      t.belongs_to :restaurant, null: false

      t.timestamps null: false
    end
  end
end
