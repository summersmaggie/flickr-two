class Question < ApplicationRecord
  has_many :answers
  validates :question_title, :presence => true
  validates :question_body, :presence => true

end
