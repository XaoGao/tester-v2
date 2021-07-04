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
class Department < ApplicationRecord
  include Defaultable
  include Activeable
  include Sortable

  has_many :users

  validates :level, presence: true, uniqueness: { case_sensitive: false }, length: { maximum: 50 }
  validates :name, presence: true, uniqueness: { case_sensitive: false }, length: { maximum: 150 }

  def toggle!
    update(lock: !lock)
  end

  def status
    lock ? 'Заблокированый' : 'Активный'
  end
end
