# == Schema Information
#
# Table name: tests
#
#  id         :integer          not null, primary key
#  lock       :boolean
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Test < ApplicationRecord
  has_many :questions

  validates :name, presence: true, uniqueness: { case_sensitive: false }, length: { maximum: 50 }
end
