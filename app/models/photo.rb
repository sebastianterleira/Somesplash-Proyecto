class Photo < ApplicationRecord
  has_one_attached :cover
  belongs_to :category, counter_cache: true
  has_many :comments, as: :commentable, dependent: :destroy

  validates :title, presence: true, length: { in: 0..100, message: 'Max 100 characteres' }
  validates :description, length: { in: 0..500, message: 'Max 500 characteres' }, allow_nil: true
  # validates :comments_count,  presence: true,
  #                             numericality: { only_integer: true, greater_than_or_equal: 0 }
end
