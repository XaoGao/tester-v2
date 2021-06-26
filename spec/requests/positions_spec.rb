require 'rails_helper'

RSpec.describe PositionsController, type: :controller do
  describe 'GET /index' do
    login_user
    it 'returns a success response' do
      get :index

      expect(response).to be_successful
    end
  end
end
