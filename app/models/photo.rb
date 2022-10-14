class Photo < ApplicationRecord
  belongs_to :category
  # has_one_attached :cover
  has_many :comments, as: :commentable, dependent: :destroy

  validates :name, presence: true, length: { in: 0..100, message: 'Max 100 characteres' }
  validates :description, length: { in: 0..200, message: 'Max 200 characteres' }, allow_nil: true
  # validates :comments_count,  presence: true,
  #                             numericality: { only_integer: true, greater_than_or_equal: 0 }
end
