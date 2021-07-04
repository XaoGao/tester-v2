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
  describe "GET /index" do
    # pending "add some examples (or delete) #{__FILE__}"
  end
end
