class CreateBucketListMovies < ActiveRecord::Migration[5.1]
  def change
    create_table :bucket_list_movies do |t|
      t.integer :bucket_list_id
      t.integer :movie_id
      t.boolean :seen, default: false

      t.timestamps
    end
  end
end
