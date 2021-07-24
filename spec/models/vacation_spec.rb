# == Schema Information
#
# Table name: vacations
#
#  id             :integer          not null, primary key
#  by             :datetime
#  from           :datetime
#  number_of_days :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  user_id        :integer
#
# Indexes
#
#  index_vacations_on_user_id  (user_id)
#
require 'rails_helper'

RSpec.describe Vacation, type: :model do
  describe 'format date' do
    context '.from_date' do
      let(:vacation) { build(:vacation, from: '2021-07-10 10:41:50.290161', by: '2021-07-12 10:41:50.290161') }
      subject { vacation.from_date }
      it { is_expected.to eq('10.07.2021') }
    end

    context '.by_date' do
      let(:vacation) { build(:vacation, from: '2021-07-10 10:41:50.290161', by: '2021-07-12 10:41:50.290161') }
      subject { vacation.by_date }
      it { is_expected.to eq('12.07.2021') }
    end

    context '.interval' do
      let(:vacation) { build(:vacation, from: '2021-07-10 10:41:50.290161', by: '2021-07-12 10:41:50.290161') }
      subject { vacation.interval }
      it { is_expected.to eq('10.07.2021 - 12.07.2021') }
    end
  end
end
