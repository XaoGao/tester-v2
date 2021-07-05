require 'rails_helper'

RSpec.describe PhonesController, type: :controller do
  describe 'routing to phones' do
    it 'index' do
      expect(get: '/phones').to route_to(controller: 'phones', action: 'index')
    end
    it 'toggle' do
      expect(put: '/phones/1/toggle').to route_to(controller: 'phones', action: 'toggle', id: '1')
    end
    it 'new' do
      expect(get: '/phones/new').to route_to(controller: 'phones', action: 'new')
    end
    it 'create' do
      expect(post: '/phones').to route_to(controller: 'phones', action: 'create')
    end
    it 'edit' do
      expect(get: '/phones/1/edit').to route_to(controller: 'phones', action: 'edit', id: '1')
    end
    it 'update' do
      expect(put: '/phones/1').to route_to(controller: 'phones', action: 'update', id: '1')
    end
    it 'destroy' do
      expect(delete: '/phones/1').to route_to(controller: 'phones', action: 'destroy', id: '1')
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

    context 'create a new phone' do
      login_user(role: :hr)
      it 'when controller get params and successful create phone ' do
        phone = create(:phone, number: '123', lock: false)
        post :create, params: { phone: phone.attributes }
        expect(Phone.count).to eq(2)
        expect(Phone.find_by(number: '123')).to eq(phone)
      end
    end
  end

  describe 'PUT /update' do
    context 'rejection access to a doctor' do
      let(:phone) { create(:phone) }
      login_user(role: :doctor)
      it 'redirect to root path' do
        get :edit, params: { id: phone.id }
        expect(response).to redirect_to(root_path)
      end
    end

    context 'rejection access to a register' do
      let(:phone) { create(:phone) }
      login_user(role: :register)
      it 'redirect to root path' do
        get :edit, params: { id: phone.id }
        expect(response).to redirect_to(root_path)
      end
    end

    context 'access to a hr' do
      let(:phone) { create(:phone) }
      login_user(role: :hr)
      it 'returns a success response' do
        get :edit, params: { id: phone.id }
        expect(response).to be_successful
      end
    end

    context 'access to an admin' do
      let(:phone) { create(:phone) }
      login_user(role: :admin)
      it 'returns a success response' do
        get :edit, params: { id: phone.id }
        expect(response).to be_successful
      end
    end
    context 'update a phone' do
      let(:phone) { create(:phone, number: '312') }
      login_user(role: :hr)
      it 'when controller get params and successful update phone ' do
        new_phone_attributes = build(:phone, number: '123', lock: false)
        put :update, params: { id: phone.id, phone: new_phone_attributes.attributes }
        expect(Phone.find(phone.id).number).to eq('123')
      end
    end
  end

  describe 'DELETE /destroy' do
    context 'rejection access to a doctor' do
      let(:phone) { create(:phone) }
      login_user(role: :doctor)
      it 'redirect to root path' do
        delete :destroy, params: { id: phone.id }
        expect(response).to redirect_to(root_path)
      end
    end

    context 'rejection access to a register' do
      let(:phone) { create(:phone) }
      login_user(role: :register)
      it 'redirect to root path' do
        delete :destroy, params: { id: phone.id }
        expect(response).to redirect_to(root_path)
      end
    end

    context 'access to a hr' do
      let(:phone) { create(:phone) }
      login_user(role: :hr)
      it 'returns a success response' do
        delete :destroy, params: { id: phone.id }
        expect(response).to redirect_to(phones_path)
      end
    end

    context 'access to an admin' do
      let(:phone) { create(:phone) }
      login_user(role: :admin)
      it 'returns a success response' do
        delete :destroy, params: { id: phone.id }
        expect(response).to redirect_to(phones_path)
      end
    end
    context 'delete a phone' do
      let(:phone) { create(:phone) }
      login_user(role: :hr)
      it 'when controller get params and successful destroy a phone' do
        delete :destroy, params: { id: phone.id }
        expect(Phone.all.include?(phone)).to be false
      end
    end
  end

  describe 'PUT /toggle' do
    context 'toggle status for a phone' do
      login_user(role: :hr)
      it 'change unlock status to lock' do
        phone = create(:phone, lock: false)
        put :toggle, params: { id: phone.id }
        expect(Phone.find(phone.id).lock).to be true
      end
      it 'change lock status to unlock' do
        phone = create(:phone, lock: true)
        put :toggle, params: { id: phone.id }
        expect(Phone.find(phone.id).lock).to be false
      end
    end
  end
end
