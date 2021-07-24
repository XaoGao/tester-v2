# == Schema Information
#
# Table name: testings
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  doctor_id  :integer
#  patient_id :integer
#  test_id    :integer
#
# Indexes
#
#  index_testings_on_doctor_id   (doctor_id)
#  index_testings_on_patient_id  (patient_id)
#  index_testings_on_test_id     (test_id)
#
# Foreign Keys
#
#  doctor_id  (doctor_id => users.id)
#
class Testing < ApplicationRecord
  extend DateFormatter
  belongs_to :doctor, class_name: 'User', foreign_key: 'doctor_id'
  belongs_to :patient
  belongs_to :test

  has_many :question_answers

  only_date_format :created_at

  def date_created_at
    created_at_date
  end
end
