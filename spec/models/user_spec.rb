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
require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'create' do
    it 'create a user without position' do
      user = build(:user, position: nil)
      expect(user.valid?).to eq(true)
      expect(user.position).to eq(Position.default)
    end
  end

  describe "user's name" do
    context '#full_name' do
      let(:user) { build(:user, first_name: 'Jon', last_name: 'Josh', middle_name: 'Jeck') }
      it 'success' do
        expect(user.full_name).to eq('Josh Jon Jeck')
      end
    end
    context '#initials' do
      let(:user) { build(:user, first_name: 'Jon', last_name: 'Josh', middle_name: 'Jeck') }
      it 'success' do
        expect(user.initials).to eq('Josh J. J.')
      end
    end
  end
end
