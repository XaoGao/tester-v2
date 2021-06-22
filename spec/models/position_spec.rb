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
require 'rails_helper'

RSpec.describe Position, type: :model do  
  describe '#default' do
    context 'default value is not exist' do
      let(:positions) { create_list(:position, 3) }
      it 'empty table' do
        default_position = Position.default
        expect(Position.all.count).to eq(1)
        expect(default_position.name).to eq('default')
      end

      it 'not empty table' do
        count_position_before_default = positions.count
        default_position = Position.default
        expect(Position.all.count).to eq(4)
        expect(default_position.name).to eq('default')
        expect(default_position.level).to eq(0)
      end
    end
    context 'default value is exist' do
      let(:positions) { create_list(:position, 3) }
      it 'exist only default value' do
        default_position = create(:position, level: 0, name: 'default')
        default_position_from_db = Position.default
        expect(default_position_from_db.name).to eq(default_position.name)
      end

      it 'not empty table' do
        count_position_before_default = positions.count
        default_position = create(:position, level: 0, name: 'default')
        default_position_from_db = Position.default
        expect(Position.all.count).to eq(4)
        expect(default_position_from_db.name).to eq(default_position.name)
        expect(default_position_from_db.level).to eq(default_position.level)
      end
    end
  end
end
