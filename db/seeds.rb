require 'faker'

Question.destroy_all
Answer.destroy_all

25.times do |index|
  question = Question.create!(question_title: Faker::Seinfeld.character,
                            question_body: Faker::Lorem.characters(75))
  5.times do |index|
    Answer.create!(answer_title: Faker::RickAndMorty.character,
                    answer_body: Faker::Lorem.characters(75),
                    question_id: question.id)
  end
end

p "Created #{Question.count} questions"
p "Created #{Answer.count} answers"
