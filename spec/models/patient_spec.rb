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
require 'rails_helper'

RSpec.describe Patient, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
