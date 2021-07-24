# == Schema Information
#
# Table name: vacations
#
#  id             :integer          not null, primary key
#  by             :datetime
#  from           :datetime
#  number_of_days :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  user_id        :integer
#
# Indexes
#
#  index_vacations_on_user_id  (user_id)
#
FactoryBot.define do
  factory :vacation do
    by { Faker::Date.between(from: '2014-09-23', to: '2014-09-25') }
    from { Faker::Date.between(from: '2014-10-12', to: '2014-10-16') }
    number_of_days { (by.to_date - from.to_date).to_i }
    user { association :user }
  end
end
