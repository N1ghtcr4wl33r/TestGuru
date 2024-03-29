class Test < ApplicationRecord
  belongs_to :category
  belongs_to :author, class_name: 'User', foreign_key: 'author_id'
  has_many :questions
  has_many :tests_users
  has_many :users, through: :tests_users

  scope :easy, -> { where(level: 0..1) }
  scope :medium, -> { where(level: 2..4) }
  scope :hard, -> { where(level: 5..Float::INFINITY) } 
  scope :by_category, -> (category_name) { joins(:category).where(category: {title:category_name}) }
  scope :by_level, -> (level) { where(level: level) }

  validates :level, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :title, presence: true, uniqueness: { scope: :level }

  def self.sort_by_category(category_name)
    by_category(category_name).order(title: :desc).pluck(:title)
  end
end
