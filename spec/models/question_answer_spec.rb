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
require 'rails_helper'

RSpec.describe QuestionAnswer, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
