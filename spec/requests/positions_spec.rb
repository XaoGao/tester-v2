require 'rails_helper'

RSpec.describe PositionsController, type: :controller do
  describe 'routing to positions' do
    it 'index' do
      expect(get: '/positions').to route_to(controller: 'positions', action: 'index')
    end
    it 'toggle' do
      expect(put: '/positions/1/toggle').to route_to(controller: 'positions', action: 'toggle', id: '1')
    end
    it 'new' do
      expect(get: '/positions/new').to route_to(controller: 'positions', action: 'new')
    end
    it 'create' do
      expect(post: '/positions').to route_to(controller: 'positions', action: 'create')
    end
    it 'edit' do
      expect(get: '/positions/1/edit').to route_to(controller: 'positions', action: 'edit', id: '1')
    end
    it 'update' do
      expect(put: '/positions/1').to route_to(controller: 'positions', action: 'update', id: '1')
    end
    it 'destroy' do
      expect(delete: '/positions/1').to route_to(controller: 'positions', action: 'destroy', id: '1')
    end
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
      end
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
        get :new
        expect(response).to redirect_to(root_path)
      end
    end

    context 'rejection access to a register' do
      login_user(role: :register)
      it 'redirect to root path' do
        get :new
        expect(response).to redirect_to(root_path)
      end
    end

    context 'access to a hr' do
      login_user(role: :hr)
      it 'returns a success response' do
        get :new
        expect(response).to be_successful
      end
    end

    context 'access to an admin' do
      login_user(role: :admin)
      it 'returns a success response' do
        get :new
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
    end
  end

  describe 'PUT /update' do
    context 'rejection access to a doctor' do
      let(:position) { create(:position) }
      login_user(role: :doctor)
      it 'redirect to root path' do
        get :edit, params: { id: position.id }
        expect(response).to redirect_to(root_path)
      end
    end

    context 'rejection access to a register' do
      let(:position) { create(:position) }
      login_user(role: :register)
      it 'redirect to root path' do
        get :edit, params: { id: position.id }
        expect(response).to redirect_to(root_path)
      end
    end

    context 'access to a hr' do
      let(:position) { create(:position) }
      login_user(role: :hr)
      it 'returns a success response' do
        get :edit, params: { id: position.id }
        expect(response).to be_successful
      end
    end

    context 'access to an admin' do
      let(:position) { create(:position) }
      login_user(role: :admin)
      it 'returns a success response' do
        get :edit, params: { id: position.id }
        expect(response).to be_successful
      end
    end
    context 'update a position' do
      let(:position) { create(:position, name: 'before') }
      login_user(role: :hr)
      it 'when controller get params and successful update position ' do
        new_position_attributes = build(:position, name: 'after', level: 0, lock: false)
        put :update, params: { id: position.id, position: new_position_attributes.attributes }
        expect(Position.find(position.id).name).to eq('after')
      end
    end
  end

  describe 'DELETE /destroy' do
    context 'rejection access to a doctor' do
      let(:position) { create(:position) }
      login_user(role: :doctor)
      it 'redirect to root path' do
        delete :destroy, params: { id: position.id }
        expect(response).to redirect_to(root_path)
      end
    end

    context 'rejection access to a register' do
      let(:position) { create(:position) }
      login_user(role: :register)
      it 'redirect to root path' do
        delete :destroy, params: { id: position.id }
        expect(response).to redirect_to(root_path)
      end
    end

    context 'access to a hr' do
      let(:position) { create(:position) }
      login_user(role: :hr)
      it 'returns a success response' do
        delete :destroy, params: { id: position.id }
        expect(response).to redirect_to(positions_path)
      end
    end

    context 'access to an admin' do
      let(:position) { create(:position) }
      login_user(role: :admin)
      it 'returns a success response' do
        delete :destroy, params: { id: position.id }
        expect(response).to redirect_to(positions_path)
      end
    end
    context 'delete a position' do
      let(:position) { create(:position) }
      login_user(role: :hr)
      it 'when controller get params and successful destroy a position' do
        delete :destroy, params: { id: position.id }
        expect(Position.all.include?(position)).to be false
      end
    end
  end

  describe 'PUT /toggle' do
    context 'toggle status for a position' do
      login_user(role: :hr)
      it 'change unlock status to lock' do
        position = create(:position, lock: false)
        put :toggle, params: { id: position.id }
        expect(Position.find(position.id).lock).to be true
      end
      it 'change lock status to unlock' do
        position = create(:position, lock: true)
        put :toggle, params: { id: position.id }
        expect(Position.find(position.id).lock).to be false
      end
    end
  end
end
