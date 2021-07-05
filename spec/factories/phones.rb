# == Schema Information
#
# Table name: phones
#
#  id         :integer          not null, primary key
#  lock       :boolean
#  number     :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
FactoryBot.define do
  factory :phone do
    number { Faker::PhoneNumber.cell_phone }
    lock { false }
  end
end
