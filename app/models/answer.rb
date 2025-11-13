class Answer < ApplicationRecord
  belongs_to :question

  scope :right, -> { where(correct: true) }
  
  validates :body, presence: true
  validate :validate_answers_count, on: :create

  private
  
  def validate_answers_count
    errors.add(:question, "Can't create more than 4 answers") if question.present? && question.answers.count >= 4
  end
end
