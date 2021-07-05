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
class Phone < ApplicationRecord
  has_one :user

  validates :number, presence: true, uniqueness: { case_sensitive: false }, length: {maximum: 50}
end
