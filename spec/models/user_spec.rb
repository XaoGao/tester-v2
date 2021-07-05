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
require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'validate user' do
    context 'position filed' do
      let(:position) { create(:position) }
      let(:user) { build(:user, position: nil) }

      it 'when create without position' do
        expect(user.save).to eq(true)
        expect(user.position).to eq(Position.default)
      end

      it 'when create with position' do
        user.update(position: position)
        expect(user.save).to eq(true)
        expect(user.position).to eq(position)
      end
    end
    context 'department field' do
      let(:department) { create(:department) }
      let(:user) { build(:user, department: nil) }

      it 'when create without department' do
        expect(user.save).to eq(true)
        expect(user.department).to eq(Department.default)
      end

      it 'when create with department' do
        user.update(department: department)
        expect(user.save).to eq(true)
        expect(user.department).to eq(department)
      end
    end
  end

  describe "user's name" do
    context '.full_name' do
      subject { build(:user, first_name: 'Jon', last_name: 'Josh', middle_name: 'Jeck').full_name }
      it { is_expected.to eq('Josh Jon Jeck') }
    end
    context '.abbreviated' do
      subject { build(:user, first_name: 'Jon', last_name: 'Josh', middle_name: 'Jeck').abbreviated }
      it { is_expected.to eq('Josh J. J.') }
    end
  end
end
