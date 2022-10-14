class Category < ApplicationRecord
  # has_one_attached :cover
  has_many :photos, dependent: :nullify
  has_many :comments, as: :commentable, dependent: :destroy

  validates :name, presence: true, length: { in: 0..100, message: 'Max 100 characteres' }, uniqueness: true
  validates :description, length: { in: 0..200, message: 'Max 200 characteres' }, allow_nil: true
  validates :photos_count,  presence: true,
                            numericality: { only_integer: true, greater_than_or_equal: 0 }
end
