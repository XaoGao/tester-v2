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
class Vacation < ApplicationRecord
  belongs_to :user

  validates :start, presence: true
  validates :end, presence: true
  # validates :number_of_days, presence: true

  before_update :calculate_number_of_days

  def calculate_number_of_days
    self.number_of_days = (self.end.to_date - self.start.to_date).to_i
  end
end
