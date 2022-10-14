class Comment < ApplicationRecord
    # belongs_to :commentable, polymorphic: true, counter_cache: :comments_count
  validates :description, length: { in: 0..200, message: 'Max 200 characteres' }, allow_nil: true
end
