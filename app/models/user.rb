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
#  phone_id               :integer
#  position_id            :integer
#
# Indexes
#
#  index_users_on_department_id         (department_id)
#  index_users_on_email                 (email) UNIQUE
#  index_users_on_phone_id              (phone_id)
#  index_users_on_position_id           (position_id)
#  index_users_on_reset_password_token  (reset_password_token) UNIQUE
#
class User < ApplicationRecord
  enum role: { doctor: 0, hr: 1, register: 2, admin: 3 }
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  belongs_to :department, optional: true
  belongs_to :position, optional: true
  belongs_to :phone, optional: true

  before_validation :set_default_position, :set_default_department

  validates :first_name, length: { maximum: 50 }
  validates :last_name, length: { maximum: 50 }
  validates :middle_name, length: { maximum: 50 }
  validates :position, presence: true
  validates :department, presence: true

  def set_default_position
    return if position.present?

    self.position = Position.default
  end

  def set_default_department
    return if department.present?

    self.department = Department.default
  end

  def full_name
    "#{last_name} #{first_name} #{middle_name}"
  end

  def abbreviated
    "#{last_name} #{first_name.first}. #{middle_name.first}."
  end
end
