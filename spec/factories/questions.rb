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
FactoryBot.define do
  factory :question do
    
  end
end
