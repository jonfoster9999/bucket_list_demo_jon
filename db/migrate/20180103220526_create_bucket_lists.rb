class CreateBucketLists < ActiveRecord::Migration[5.1]
  def change
    create_table :bucket_lists do |t|
      t.string :name
      t.integer :user_id

      t.timestamps
    end
  end
  t.timestamps
end
