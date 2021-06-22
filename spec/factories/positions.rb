# == Schema Information
#
# Table name: positions
#
#  id         :integer          not null, primary key
#  level      :integer
#  lock       :boolean          default(FALSE)
#  name       :string           default("")
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
FactoryBot.define do
  factory :position do
    name { "MyString" }
    lock { false }
    level { 1 }
  end
end
