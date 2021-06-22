# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  first_name             :string           default("")
#  last_name              :string           default("")
#  lock                   :boolean          default(FALSE)
#  middle_name            :string           default("")
#  remember_created_at    :datetime
#  reset_password_sent_at :datetime
#  reset_password_token   :string
#  role                   :integer
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  department_id          :integer
#  position_id            :integer
#
# Indexes
#
#  index_users_on_department_id         (department_id)
#  index_users_on_email                 (email) UNIQUE
#  index_users_on_position_id           (position_id)
#  index_users_on_reset_password_token  (reset_password_token) UNIQUE
#
class User < ApplicationRecord
  enum roles: %i[doctor hr register admin]
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  belongs_to :department, optional: true
  belongs_to :position, optional: true

  before_validation :set_default_position

  validates :first_name, length: { maximum: 50 }
  validates :last_name, length: { maximum: 50 }
  validates :middle_name, length: { maximum: 50 }
  validates :position, presence: true

  def set_default_position
    return if self.position.present?

    self.position = Position.default
  end

  def full_name
    "#{last_name} #{first_name} #{middle_name}"
  end

  def initials
    "#{last_name} #{first_name.first}. #{middle_name.first}."
  end
end
