class Answer < ApplicationRecord
  belongs_to :question
  validates :answer_title, :presence => true
  validates :answer_body, :presence => true
end
