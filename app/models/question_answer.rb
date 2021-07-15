# == Schema Information
#
# Table name: question_answers
#
#  id          :integer          not null, primary key
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  answer_id   :integer
#  patient_id  :integer
#  question_id :integer
#  testing_id  :integer
#
# Indexes
#
#  index_question_answers_on_answer_id    (answer_id)
#  index_question_answers_on_patient_id   (patient_id)
#  index_question_answers_on_question_id  (question_id)
#  index_question_answers_on_testing_id   (testing_id)
#
class QuestionAnswer < ApplicationRecord
  belongs_to :testing
  belongs_to :answer
  belongs_to :question

  def question_text
    question.text
  end

  def question_level
    question.level
  end

  def answer_text
    answer.text
  end

  def question_with_answer
    "#{question_level}) #{question_text}: #{answer_text}"
  end
end
