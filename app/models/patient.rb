# == Schema Information
#
# Table name: patients
#
#  id                :integer          not null, primary key
#  document_number   :string           not null
#  first_name        :string           not null
#  last_name         :string           not null
#  lock              :boolean          not null
#  middle_name       :string           not null
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  current_doctor_id :integer
#
# Indexes
#
#  index_patients_on_current_doctor_id  (current_doctor_id)
#
# Foreign Keys
#
#  current_doctor_id  (current_doctor_id => users.id)
#
class Patient < ApplicationRecord
  include Activeable
  include NameOfPerson
  include Sortable
  include Statusable

  belongs_to :current_doctor, class_name: 'User', foreign_key: 'current_doctor_id', optional: true

  validates :first_name, presence: true, length: { maximum: 50 }
  validates :last_name, presence: true, length: { maximum: 50 }
  validates :middle_name, presence: true, length: { maximum: 50 }
  validates :document_number, presence: true, length: { maximum: 50 }

  def name_of_current_doctor
    current_doctor.nil? ? '' : current_doctor.full_name
  end
end
