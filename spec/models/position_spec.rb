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
    context 'default record is not exist' do
      let(:positions) { create_list(:position, 3) }
      it 'create a default record in a empty table' do
        expect(Position.default.name).to eq('default')
        expect(Position.default.level).to eq(0)
        expect(Position.all.count).to eq(1)
      end

      it 'create a default record in a not empty table' do
        count_position_before_default = positions.count
        expect(Position.default.name).to eq('default')
        expect(Position.default.level).to eq(0)
        expect(Position.all.count).to eq(4)
      end
    end
    context 'default record is exist' do
      let(:positions) { create_list(:position, 3) }
      it 'return a existed default record' do
        default_position = create(:position, level: 0, name: 'default')
        expect(Position.default).to eq(default_position)
      end

      it 'return a existed default record in a not empty table' do
        count_position_before_default = positions.count
        default_position = create(:position, level: 0, name: 'default')
        expect(Position.default).to eq(default_position)
        expect(Position.all.count).to eq(4)
      end
    end
  end

  describe '#enabled' do
    context 'when table is not empty' do
      let!(:positions_unlock) { create_list(:position, 3, lock: false) }
      let!(:positions_lock) { create_list(:position, 2, lock: true) }
      subject { Position.enabled.count }
      it { is_expected.to eq(2) }
    end
  end

  describe '#disabled' do
    context 'when table is not empty' do
      let!(:positions_unlock) { create_list(:position, 3, lock: false) }
      let!(:positions_lock) { create_list(:position, 2, lock: true) }
      subject { Position.disabled.count }
      it { is_expected.to eq(3) }
    end
  end
end
