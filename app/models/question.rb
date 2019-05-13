class Question < ApplicationRecord
  belongs_to :user
  has_many :choices

  scope :published, -> { Question.joins(:choices).where(choices: { correct_answer: true}) }
end
