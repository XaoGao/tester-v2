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
    context 'default value is not exist' do
      let(:departments) { create_list(:department, 3) }
      it 'empty table' do
        default_department = Department.default
        expect(Department.all.count).to eq(1)
        expect(default_department.name).to eq('default')
      end

      it 'not empty table' do
        count_department_before_default = departments.count
        default_department = Department.default
        expect(Department.all.count).to eq(4)
        expect(default_department.name).to eq('default')
        expect(default_department.level).to eq(0)
      end
    end
    context 'default value is exist' do
      let(:departments) { create_list(:department, 3) }
      it 'exist only default value' do
        default_department = create(:department, level: 0, name: 'default')
        default_department_from_db = Department.default
        expect(default_department_from_db.name).to eq(default_department.name)
      end

      it 'not empty table' do
        count_department_before_default = departments.count
        default_department = create(:department, level: 0, name: 'default')
        default_department_from_db = Department.default
        expect(Department.all.count).to eq(4)
        expect(default_department_from_db.name).to eq(default_department.name)
        expect(default_department_from_db.level).to eq(default_department.level)
      end
    end
  end
end
