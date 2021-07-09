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
FactoryBot.define do
  factory :testing do
    
  end
end
