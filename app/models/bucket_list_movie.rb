class BucketListMovie < ApplicationRecord
  belongs_to :movie
  belongs_to :bucket_list

end
