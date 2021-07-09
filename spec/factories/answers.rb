# == Schema Information
#
# Table name: answers
#
#  id          :integer          not null, primary key
#  level       :integer
#  text        :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  question_id :integer
#
# Indexes
#
#  index_answers_on_question_id  (question_id)
#
FactoryBot.define do
  factory :answer do
    
  end
end
