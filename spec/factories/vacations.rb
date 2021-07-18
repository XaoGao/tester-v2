# == Schema Information
#
# Table name: vacations
#
#  id             :integer          not null, primary key
#  end            :datetime
#  number_of_days :integer
#  start          :datetime
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
    
  end
end
