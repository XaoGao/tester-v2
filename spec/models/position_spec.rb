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

  describe '#order_by' do
    context 'sort positions by level' do
      let(:positions) { create_list(:position, 3) }
      subject { Position.order_by(:level).first }
      it { is_expected.to eq(Position.first) }
    end
  end

  describe '#order_by_reverse' do
    context 'reserve sort positions by level' do
      let(:positions) { create_list(:position, 3) }
      subject { Position.order_by_reverse(:level).first }
      it { is_expected.to eq(Position.last) }
    end
  end

  describe '.toggle!' do
    context 'reverse value a lock field' do
      let(:disable_position) { create(:position, lock: true) }
      let(:enable_position) { create(:position, lock: false) }
      it 'convert true to false' do
        disable_position.toggle!
        expect(disable_position.lock).to be false
      end
      it 'convert false to true' do
        enable_position.toggle!
        expect(enable_position.lock).to be true
      end
    end
  end
end
