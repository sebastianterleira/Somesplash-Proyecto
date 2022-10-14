class Comment < ApplicationRecord
  belongs_to :commentable, polymorphic: true
  validates :body, length: { in: 0..400, message: 'Max 400 characteres' }, allow_nil: true
end
