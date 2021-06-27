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
class Position < ApplicationRecord
  include Defaultable
  include Activeable
  has_many :users

  validates :level, presence: true, uniqueness: { case_sensitive: false }, length: { maximum: 50 }
  validates :name, presence: true, uniqueness: { case_sensitive: false }, length: { maximum: 50 }
end
