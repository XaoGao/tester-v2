# == Schema Information
#
# Table name: departments
#
#  id         :integer          not null, primary key
#  level      :integer
#  lock       :boolean          default(FALSE)
#  name       :string           default("")
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
FactoryBot.define do
  factory :department do
    sequence(:level) { |n| n + 1 }
    name { Faker::Job.title + " #{Time.now.to_f}" }
    lock { false }
  end
end
