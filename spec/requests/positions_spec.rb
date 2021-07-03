require 'rails_helper'

RSpec.describe PositionsController, type: :controller do
  describe 'routing to positions' do
    it 'index' do
      expect(get: '/positions').to route_to(controller: 'positions', action: 'index')
    end
    # it 'show' do
    #   expect(get: '/positions/1').to route_to(controller: 'positions', action: 'show', id: '1')
    # end
    it 'new' do
      expect(get: '/positions/new').to route_to(controller: 'positions', action: 'new')
    end
    it 'create' do
      expect(post: '/positions').to route_to(controller: 'positions', action: 'create')
    end
    # it 'to edit' do
    #   expect(get: '/positions/1/edit').to route_to(controller: 'positions', action: 'edit', id: '1')
    # end
    # it 'update' do
    #   expect(put: '/positions/1').to route_to(controller: 'positions', action: 'update', id: '1')
    # end
    # it 'destroy' do
    #   expect(delete: '/positions/1').to route_to(controller: 'positions', action: 'destroy', id: '1')
    # end
  end

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
        # expect(response).to render_template :index
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
  describe 'POST /create' do
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
      it 'returns a success response' do
        get :index
        expect(response).to be_successful
      end
    end

    context 'access to an admin' do
      login_user(role: :admin)
      it 'returns a success response' do
        get :index
        expect(response).to be_successful
      end
    end

    context 'create a new position' do
      login_user(role: :hr)
      it 'when controller get params and successful create position ' do
        position = create(:position, name: 'test', level: 0, lock: false)
        post :create, params: { position: position.attributes }
        expect(Position.count).to eq(2)
        expect(Position.find_by(name: 'test')).to eq(position)
      end

      it 'when visit page and successful create position' do
        visit new_position_path
        fill_in 'position-name',	with: 'example'
        fill_in 'position-level',	with: '0'

        expect { click_button 'Save' }.to change(Position, :count).by(1)
      end
    end
  end
end
