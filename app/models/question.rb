class Question < ApplicationRecord
  belongs_to :user
  has_many :choices
  accepts_nested_attributes_for :choices

  scope :published, -> { Question.joins(:choices).where(choices: { correct_answer: true}) }
end
