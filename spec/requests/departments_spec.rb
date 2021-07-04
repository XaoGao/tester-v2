require 'rails_helper'

RSpec.describe DepartmentsController, type: :controller do
  describe 'routing to departments' do
    it 'index' do
      expect(get: '/departments').to route_to(controller: 'departments', action: 'index')
    end
    it 'toggle' do
      expect(put: '/departments/1/toggle').to route_to(controller: 'departments', action: 'toggle', id: '1')
    end
    it 'new' do
      expect(get: '/departments/new').to route_to(controller: 'departments', action: 'new')
    end
    it 'create' do
      expect(post: '/departments').to route_to(controller: 'departments', action: 'create')
    end
    it 'edit' do
      expect(get: '/departments/1/edit').to route_to(controller: 'departments', action: 'edit', id: '1')
    end
    it 'update' do
      expect(put: '/departments/1').to route_to(controller: 'departments', action: 'update', id: '1')
    end
    it 'destroy' do
      expect(delete: '/departments/1').to route_to(controller: 'departments', action: 'destroy', id: '1')
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
      let(:departments) { create_list(:departments, 5) }
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

    context 'create a new department' do
      login_user(role: :hr)
      it 'when controller get params and successful create department ' do
        department = create(:department, name: 'test', level: 0, lock: false)
        post :create, params: { department: department.attributes }
        expect(Department.count).to eq(2)
        expect(Department.find_by(name: 'test')).to eq(department)
      end
    end
  end

  describe 'PUT /update' do
    context 'rejection access to a doctor' do
      let(:department) { create(:department) }
      login_user(role: :doctor)
      it 'redirect to root path' do
        get :edit, params: { id: department.id }
        expect(response).to redirect_to(root_path)
      end
    end

    context 'rejection access to a register' do
      let(:department) { create(:department) }
      login_user(role: :register)
      it 'redirect to root path' do
        get :edit, params: { id: department.id }
        expect(response).to redirect_to(root_path)
      end
    end

    context 'access to a hr' do
      let(:department) { create(:department) }
      login_user(role: :hr)
      it 'returns a success response' do
        get :edit, params: { id: department.id }
        expect(response).to be_successful
      end
    end

    context 'access to an admin' do
      let(:department) { create(:department) }
      login_user(role: :admin)
      it 'returns a success response' do
        get :edit, params: { id: department.id }
        expect(response).to be_successful
      end
    end
    context 'update a department' do
      let(:department) { create(:department, name: 'before') }
      login_user(role: :hr)
      it 'when controller get params and successful update department ' do
        new_department_attributes = build(:department, name: 'after', level: 0, lock: false)
        put :update, params: { id: department.id, department: new_department_attributes.attributes }
        expect(Department.find(department.id).name).to eq('after')
      end
    end
  end

  describe 'DELETE /destroy' do
    context 'rejection access to a doctor' do
      let(:department) { create(:department) }
      login_user(role: :doctor)
      it 'redirect to root path' do
        delete :destroy, params: { id: department.id }
        expect(response).to redirect_to(root_path)
      end
    end

    context 'rejection access to a register' do
      let(:department) { create(:department) }
      login_user(role: :register)
      it 'redirect to root path' do
        delete :destroy, params: { id: department.id }
        expect(response).to redirect_to(root_path)
      end
    end

    context 'access to a hr' do
      let(:department) { create(:department) }
      login_user(role: :hr)
      it 'returns a success response' do
        delete :destroy, params: { id: department.id }
        expect(response).to redirect_to(departments_path)
      end
    end

    context 'access to an admin' do
      let(:department) { create(:department) }
      login_user(role: :admin)
      it 'returns a success response' do
        delete :destroy, params: { id: department.id }
        expect(response).to redirect_to(departments_path)
      end
    end
    context 'delete a department' do
      let(:department) { create(:department) }
      login_user(role: :hr)
      it 'when controller get params and successful destroy a department' do
        delete :destroy, params: { id: department.id }
        expect(Department.all.include?(department)).to be false
      end
    end
  end

  describe 'PUT /toggle' do
    context 'toggle status for a department' do
      login_user(role: :hr)
      it 'change unlock status to lock' do
        department = create(:department, lock: false)
        put :toggle, params: { id: department.id }
        expect(Department.find(department.id).lock).to be true
      end
      it 'change lock status to unlock' do
        department = create(:department, lock: true)
        put :toggle, params: { id: department.id }
        expect(Department.find(department.id).lock).to be false
      end
    end
  end
end
