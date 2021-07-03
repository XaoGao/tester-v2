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
require 'rails_helper'

RSpec.describe Department, type: :model do
  describe '#default' do
    context 'default record is not exist' do
      let(:departments) { create_list(:department, 3) }
      it 'create a default record in a empty table' do
        expect(Department.default.name).to eq('default')
        expect(Department.default.level).to eq(0)
        expect(Department.all.count).to eq(1)
      end

      it 'create a default record in a not empty table' do
        count_department_before_default = departments.count
        expect(Department.default.name).to eq('default')
        expect(Department.default.level).to eq(0)
        expect(Department.all.count).to eq(4)
      end
    end
    context 'default record is exist' do
      let(:departments) { create_list(:department, 3) }
      it 'return a existed default record' do
        default_department = create(:department, level: 0, name: 'default')
        expect(Department.default).to eq(default_department)
      end

      it 'return a existed default record in a not empty table' do
        count_department_before_default = departments.count
        default_department = create(:department, level: 0, name: 'default')
        expect(Department.default).to eq(default_department)
        expect(Department.all.count).to eq(4)
      end
    end
  end

  describe '#enabled' do
    context 'when table is not empty' do
      let!(:departments_unlock) { create_list(:department, 3, lock: false) }
      let!(:departments_lock) { create_list(:department, 2, lock: true) }
      subject { Department.enabled.count }
      it { is_expected.to eq(2) }
    end
  end

  describe '#disabled' do
    context 'when table is not empty' do
      let!(:departments_unlock) { create_list(:department, 3, lock: false) }
      let!(:departments_lock) { create_list(:department, 2, lock: true) }
      subject { Department.disabled.count }
      it { is_expected.to eq(3) }
    end
  end
end