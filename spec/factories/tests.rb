# == Schema Information
#
# Table name: tests
#
#  id          :integer          not null, primary key
#  description :text
#  instruction :text
#  lock        :boolean
#  name        :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
FactoryBot.define do
  factory :test do
    name { "MyString" }
    lock { false }
  end
end
