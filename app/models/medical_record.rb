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
class MedicalRecord < ApplicationRecord
  extend DateFormatter
  include Sortable
  belongs_to :patient
  belongs_to :doctor, class_name: 'User', foreign_key: 'doctor_id'

  validates :content, presence: true

  only_date_format :created_at

  def title_for_doctor
    "Пациент: #{patient.full_name}"
  end

  def title_for_patient
    "Осмотр провел: #{doctor.full_name}"
  end

  def date_created_at
    "Дата: #{created_at_date}"
  end
end
