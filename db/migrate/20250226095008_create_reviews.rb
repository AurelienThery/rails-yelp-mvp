class CreateReviews < ActiveRecord::Migration[7.1]
  
  def change
    create_table :reviews do |t|
      t.integer :rating
      t.string :content

      t.timestamps
    end
  end
end
