require 'rails_helper'

RSpec.describe PhonebooksController, type: :controller do
  describe 'routing to phonebooks' do
    it 'index' do
      expect(get: '/phonebooks').to route_to(controller: 'phonebooks', action: 'index')
    end
  end
end
