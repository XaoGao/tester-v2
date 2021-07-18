# == Schema Information
#
# Table name: medical_records
#
#  id         :integer          not null, primary key
#  content    :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  doctor_id  :integer
#  patient_id :integer
#
# Indexes
#
#  index_medical_records_on_doctor_id   (doctor_id)
#  index_medical_records_on_patient_id  (patient_id)
#
# Foreign Keys
#
#  doctor_id  (doctor_id => users.id)
#
require 'rails_helper'

RSpec.describe MedicalRecord, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
