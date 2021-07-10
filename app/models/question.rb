# == Schema Information
#
# Table name: questions
#
#  id         :integer          not null, primary key
#  level      :integer
#  text       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  test_id    :integer
#
# Indexes
#
#  index_questions_on_test_id  (test_id)
#
class Question < ApplicationRecord
  belongs_to :test
  has_many :answers

  validates :level, presence: true, length: { maximum: 50 }
  validates :text, presence: true, uniqueness: { case_sensitive: false }, length: { maximum: 250 }
end
