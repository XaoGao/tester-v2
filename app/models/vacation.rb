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
class Vacation < ApplicationRecord
  extend DateFormatter
  belongs_to :user

  validates :from, presence: true
  validates :by, presence: true
  # validates :number_of_days, presence: true

  before_update :calculate_number_of_days

  only_date_format :from, :by

  def calculate_number_of_days
    self.number_of_days = (self.by.to_date - self.from.to_date).to_i
  end

  def interval
    "#{from_date} - #{by_date}"
  end
end
