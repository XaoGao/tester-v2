# == Schema Information
#
# Table name: answers
#
#  id          :integer          not null, primary key
#  level       :integer
#  text        :text
#  value       :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  question_id :integer
#
# Indexes
#
#  index_answers_on_question_id  (question_id)
#
class Answer < ApplicationRecord
  belongs_to :question

  validates :level, presence: true, length: { maximum: 50 }
  validates :value, presence: true, length: { maximum: 50 }
  validates :text, presence: true, length: { maximum: 250 }
end
