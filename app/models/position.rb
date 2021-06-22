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
  has_many :users

  validates :level, presence: true, uniqueness: { case_sensitive: false }, length: { maximum: 50 }
  validates :name, presence: true, uniqueness: { case_sensitive: false }, length: { maximum: 50 }

  def self.default
    default_object = find_by(name: 'default')
    return default_object if default_object.present?

    create(level: 0, lock: false, name: 'default')
  end
end
