require 'rails_helper'

RSpec.describe PositionsController, type: :controller do
  describe 'GET /index' do
    context 'rejection access to a doctor' do
      login_user(role: :doctor)
      it 'redirect to root path' do
        get :index
        expect(response).to redirect_to(root_path)
      end
    end

    context 'rejection access to a register' do
      login_user(role: :register)
      it 'redirect to root path' do
        get :index
        expect(response).to redirect_to(root_path)
      end
    end

    context 'access to a hr' do
      login_user(role: :hr)
      let(:positions) { create_list(:positions, 5) }
      it 'returns a success response' do
        get :index
        expect(response).to be_successful
        expect(response).to render_template :index
      end

      # it 'return all position' do
      #   get :index
      #   expect(assigns(:positions)).to match_array(positions)
      # end
    end

    context 'access to an admin' do
      login_user(role: :admin)
      it 'returns a success response' do
        get :index
        expect(response).to be_successful
      end
    end
  end
end
